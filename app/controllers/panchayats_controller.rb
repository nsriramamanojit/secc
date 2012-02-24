# Author: Chaitanya
# Date: 13022012
# Controller: Panchayat
#######################################################
class PanchayatsController < ApplicationController
  before_filter :recent_items, :require_user
  filter_access_to :all
  layout "application", :except => [:show, :edit]

  def index
    @panchayats = Panchayat.where(:revenue_block_id => current_user.user_profile.revenue_block_id).search(params[:search]).paginate(:page => page, :per_page => per_page)
    @panchayat = Panchayat.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @panchayats }
    end
  end

  def show
    @panchayat = Panchayat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @panchayat }
    end
  end

  def new
    @panchayat = Panchayat.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @panchayat }
    end
  end

  def edit
    @panchayat = Panchayat.find(params[:id])
  end

  def create
    @panchayat = Panchayat.new(params[:panchayat])

    respond_to do |format|
      if @panchayat.save
        format.html { redirect_to(@panchayat, :notice => 'Panchayat was successfully created.') }
        format.xml { render :xml => @panchayat, :status => :created, :location => @panchayat }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @panchayat.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @panchayat = Panchayat.find(params[:id])

    respond_to do |format|
      if @panchayat.update_attributes(params[:panchayat])
        format.html { redirect_to(@panchayat, :notice => 'Panchayat was successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @panchayat.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @panchayat = Panchayat.find(params[:id])
    @panchayat.destroy

    respond_to do |format|
      format.html { redirect_to(panchayats_url) }
      format.xml { head :ok }
    end
  end

  def export
    @panchayats = Panchayat.where(:revenue_block_id => current_user.user_profile.revenue_block_id)
    html = render_to_string :layout => false
    kit = PDFKit.new(html, :orientation => 'Landscape', :page_size => 'A4')
    send_data(kit.to_pdf, :filename => "Panchayats_List"+".pdf", :type => 'application/pdf')
  end

  ########################################################
  private

  def recent_items
    @recent = Panchayat.where(:revenue_block_id => current_user.user_profile.revenue_block_id).recent if has_role?(:block_admin)
  end
end
