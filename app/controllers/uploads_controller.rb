# Author: Chaitanya Ram N
# Date : 08032012
####################################################
class UploadsController < ApplicationController
  before_filter :recent_items, :require_user
  filter_access_to :all
  layout "application", :except => [:show, :edit,:remarks_der,:remarks_dsr]

  def index
    @uploads = Upload.where(:revenue_block_id => current_user.user_profile.revenue_block_id).paginate(:page => page, :per_page => per_page) if has_any_role?(:block_admin,:block_supervisor)

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @uploads }
    end
  end

  def show
    @upload = Upload.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @upload }
    end
  end

  def new
    @upload = Upload.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @upload }
    end
  end

  def edit
    @upload = Upload.find(params[:id])
  end

  def create
    @upload = Upload.new(params[:upload])
    @upload.revenue_block_id = current_user.user_profile.revenue_block_id
    @upload.uploaded_by = current_user.id

    respond_to do |format|
      if @upload.save
        format.html { redirect_to(uploads_url, :notice => 'Reports are Uploaded Successfully.') }
        format.xml { render :xml => @upload, :status => :created, :location => @upload }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @upload.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @upload = Upload.find(params[:id])

    respond_to do |format|
      if @upload.update_attributes(params[:upload])
        format.html { redirect_to(@upload, :notice => 'Upload was successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @upload.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy

    respond_to do |format|
      format.html { redirect_to(uploads_url) }
      format.xml { head :ok }
    end
  end

  def download_dsr
    @upload = Upload.find(params[:id])
    send_file @upload.dsr.path, :type => @upload.dsr_content_type, :disposition => 'inline'

  end

  def download_der
    @upload = Upload.find(params[:id])
    send_file @upload.der.path, :type => @upload.der_content_type, :disposition => 'inline'
  end

  def list_revenue_block
    @uploads = Upload.where(:revenue_block_id => params[:id]).paginate(:page => page, :per_page => per_page)
  end

  def approve
    @upload = Upload.find(params[:id])
    @upload.update_attribute('status', @upload.status ? false : true)
    @upload.update_attribute('approved_by', current_user.id)
    respond_to do |format|
      format.js
    end
  end

  def remarks_dsr
    @upload = Upload.find(params[:id])
  end
  def remarks_der
    @upload = Upload.find(params[:id])
  end
  ########################################################
  private
  def recent_items
    @recent = Upload.recent
  end
end
