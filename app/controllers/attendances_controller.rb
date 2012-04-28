# Author: Chaitanya Ram
# Date: 29022012
########################################################
class AttendancesController < ApplicationController
  before_filter :recent_items, :require_user
  filter_access_to :all
  layout "application", :except => [:show, :edit]

  def index
    @attendances = Attendance.where(:revenue_block_id=>current_user.user_profile.revenue_block_id) if has_any_role?(:block_admin,:block_supervisor)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attendances }
    end
  end

  def show
    @attendance = Attendance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attendance }
    end
  end

  def new
    @attendance = Attendance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attendance }
    end
  end

  def edit
    @attendance = Attendance.find(params[:id])
  end

  def create
    @attendance = Attendance.new(params[:attendance])
    @attendance.revenue_block_id = current_user.user_profile.revenue_block_id
    @attendance.created_by = current_user.id

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to(attendances_url, :notice => 'AHL Report Created Successfully.') }
        format.xml  { render :xml => @attendance, :status => :created, :location => @attendance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attendance.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @attendance = Attendance.find(params[:id])

    respond_to do |format|
      if @attendance.update_attributes(params[:attendance])
        format.html { redirect_to(@attendance, :notice => 'AHL Report was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attendance.errors, :status => :unprocessable_entity }
      end
    end
  end


  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy

    respond_to do |format|
      format.html { redirect_to(attendances_url) }
      format.xml  { head :ok }
    end
  end
  def approve
    @attendance = Attendance.find(params[:id])
    @attendance.update_attribute('status', @attendance.status ? false : true)
    @attendance.update_attribute('modified_by',current_user.id)
    respond_to do |format|
      format.js
    end
  end
  def list_revenue_block
    @attendances = Attendance.where(:revenue_block_id=>params[:id])
  end
  def export
    @attendance = Attendance.find(params[:id])
    html = render_to_string :layout => false
    kit = PDFKit.new(html)
    kit.stylesheets << "#{Rails.root}/public/stylesheets/pdf_print.css"
    send_data(kit.to_pdf, :filename => "Attendance_Report"+".pdf", :type => 'application/pdf')

  end

  ########################################################
  private
  def recent_items
    @recent = Attendance.recent
  end
end
