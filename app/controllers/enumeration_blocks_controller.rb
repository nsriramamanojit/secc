# Author: Chaitanya
# Date: 15022012
#===================================================================
class EnumerationBlocksController < ApplicationController
  before_filter :recent_items, :require_user
  filter_access_to :all
  layout "application", :except => [:show, :edit,:update_status,:status_report,:remarks]

  def index
    @enumeration_blocks = EnumerationBlock.where(:revenue_block_id => current_user.user_profile.revenue_block_id).paginate(:page =>page, :per_page=>per_page)
    @enumeration_block = EnumerationBlock.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @enumeration_blocks }
    end
  end

  def show
    @enumeration_block = EnumerationBlock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @enumeration_block }
    end
  end

  def new
    @enumeration_block = EnumerationBlock.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @enumeration_block }
    end
  end

  def edit
    @enumeration_block = EnumerationBlock.find(params[:id])
  end

  def create
    @enumeration_block = EnumerationBlock.new(params[:enumeration_block])
    @enumeration_block.revenue_block_id = current_user.user_profile.revenue_block_id
    @enumeration_block.district_id = current_user.user_profile.district_id
    @enumeration_block.state_id = current_user.user_profile.state_id

    respond_to do |format|
      if @enumeration_block.save
        format.html { redirect_to(enumeration_blocks_url, :notice => 'Enumeration Block Created Successfully.') }
        format.xml  { render :xml => @enumeration_block, :status => :created, :location => @enumeration_block }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @enumeration_block.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @enumeration_block = EnumerationBlock.find(params[:id])

    respond_to do |format|
      if @enumeration_block.update_attributes(params[:enumeration_block])
        format.html { redirect_to(@enumeration_block, :notice => 'Enumeration Block was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @enumeration_block.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @enumeration_block = EnumerationBlock.find(params[:id])
    @enumeration_block.destroy

    respond_to do |format|
      format.html { redirect_to(enumeration_blocks_url) }
      format.xml  { head :ok }
    end
  end

  def list_all
    @enumeration_blocks = EnumerationBlock.where(:revenue_block_id => params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @enumeration_blocks }
    end
  end
  def list_revenue_block
    @enumeration_blocks = EnumerationBlock.where(:revenue_block_id => params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @enumeration_blocks }
    end
  end
  def update_status
    @enumeration_block = EnumerationBlock.find(params[:id])

  end
  def status_update
    @enumeration_block = EnumerationBlock.find(params[:id])

    respond_to do |format|
      if @enumeration_block.update_attributes(params[:enumeration_block])
        format.html { redirect_to(:back, :notice => 'Enumeration Block Status Successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "update_status" }
        format.xml  { render :xml => @enumeration_block.errors, :status => :unprocessable_entity }
      end
    end
  end
  def status_report
    ## Check Model for Code
  end

  def approve
    @enumeration_block = EnumerationBlock.find(params[:id])
    @enumeration_block.update_attribute('report_status', @enumeration_block.report_status ? false : true)
    respond_to do |format|
      format.js
    end
  end
  def status_report_export
    html = render_to_string :layout => false
    kit = PDFKit.new(html)
    kit.stylesheets << "#{Rails.root}/public/stylesheets/pdf_print.css"
    send_data(kit.to_pdf, :filename => "Status_Report"+".pdf", :type => 'application/pdf')

  end
  def download_eb_status_report
    @enumeration_blocks = EnumerationBlock.where(:revenue_block_id => params[:id])
    html = render_to_string :layout => false
    PDFKit.configure do |config|
      config.default_options = {
          :footer_center => "Page [page] of [toPage]",
          :footer_font_size=>9,
          :footer_left => "Vedavaag Systems Limited"  ,
      }
    end
    kit = PDFKit.new(html,:orientation => 'Landscape', :page_size => 'A4')
    kit.stylesheets << "#{Rails.root}/public/stylesheets/pdf_print.css"
    send_data(kit.to_pdf, :filename => "EB_Status_Report"+".pdf", :type => 'application/pdf')

  end
  def remarks
    @enumeration_block = EnumerationBlock.find(params[:id])
  end
  ########################################################
  private
  def recent_items
    @recent = EnumerationBlock.recent
  end
end
