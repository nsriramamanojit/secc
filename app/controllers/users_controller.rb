# Author: Chaitanya
# Date: 09022012
##############################################
class UsersController < ApplicationController
  layout "application", :except => [:show, :edit]
  before_filter :recent_items, :require_user
  filter_access_to :all

  def index
    @users = User.search(params[:search], params[:id]).paginate(:page => page, :per_page => per_page) if permitted_to? :index
    @users = User.revenue_block_users.joins(:user_profile).where(:user_profile => {:revenue_block_id => current_user.user_profile.revenue_block_id}).paginate(:page => page, :per_page => per_page) if has_role?(:block_admin) || has_role?(:block_supervisor)
    @users = User.revenue_block_users.joins(:user_profile).where(:user_profile => {:district_id => current_user.user_profile.district_id}).paginate(:page => page, :per_page => per_page) if has_role?(:district_coordinator)

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @users }
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @user }
    end
  end

  def new
    @user = User.new
    @user.build_user_profile

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @user }
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(users_url, :notice => 'User was successfully created.') }
        format.xml { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml { head :ok }
    end
  end

  def upload

  end

  def csv_import
    require 'csv'
    csv_file = params[:file]
    n=0
    CSV.new(csv_file.tempfile, :col_sep => ",").each do |row|
      user = User.create do |u|
        u.name =row[0]
        u.login = row[1]
        u.password = row[1]
        u.mobile_number = row[2]
        u.status = true
      end
      if user.save(:validate => false)
        Assignment.create(:user_id => user.id, :role_id => row[6], :created_at => Time.now, :updated_at => Time.now)
        c=UserProfile.new
        c.user_id = user.id
        c.state_id= row[3]
        c.district_id =row[4]
        c.revenue_block_id = row[5]
        c.save(:validate => false)

      end
      n = n + 1
    end
    flash[:notice]= "#{n} Users are imported successfully"
    respond_to do |format|
      format.html { redirect_to(users_path) }
      format.xml { head :ok }
    end

  end

  def export
    @users = User.all
    html = render_to_string :layout => false
    kit = PDFKit.new(html, :orientation => 'Landscape', :page_size => 'A4')
    send_data(kit.to_pdf, :filename => "Users_List"+".pdf", :type => 'application/pdf')

  end

  def profile
    @user = User.find(params[:id])   #current_user

    respond_to do |format|
      format.html
    end
  end
  def update_profile
    @user = current_user

  end
  def profile_update
    @user = current_user
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(:back, :notice => 'Profile successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :action => "profile_update" }
        format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end

  end
  def change_password
    @user = User.find(params[:id])
  end

  ########################################################
  private
  def recent_items
    @recent = User.revenue_block_users.joins(:user_profile).where(:user_profile => {:revenue_block_id => current_user.user_profile.revenue_block_id}).paginate(:page => page, :per_page => per_page).recent if has_role?(:block_admin) || has_role?(:block_supervisor)
    @recent = User.revenue_block_users.joins(:user_profile).where(:user_profile => {:district_id => current_user.user_profile.district_id}).paginate(:page => page, :per_page => per_page).recent if has_role?(:district_coordinator)
    @recent = User.recent if has_role?(:super_admin)
  end

end
