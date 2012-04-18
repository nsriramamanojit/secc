# Author: Chaitanya
# Date: 06022012
# Controller: Revenue Block
#######################################################
class RevenueBlocksController < ApplicationController
  before_filter :recent_items, :require_user
  filter_access_to :all
  layout "application", :except => [:show]
  def index
    @revenue_blocks = RevenueBlock.search(params[:search]).paginate(:page =>page, :per_page=>per_page)
    @revenue_block = RevenueBlock.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @revenue_blocks }
    end
  end

  def show
    @revenue_block = RevenueBlock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @revenue_block }
    end
  end

  def new
    @revenue_block = RevenueBlock.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @revenue_block }
    end
  end

  def edit
    @revenue_block = RevenueBlock.find(params[:id])
  end

  def create
    @revenue_block = RevenueBlock.new(params[:revenue_block])

    respond_to do |format|
      if @revenue_block.save
        format.html { redirect_to(revenue_blocks_url, :notice => 'Revenue Block was successfully created.') }
        format.xml  { render :xml => @revenue_block, :status => :created, :location => @revenue_block }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @revenue_block.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @revenue_block = RevenueBlock.find(params[:id])

    respond_to do |format|
      if @revenue_block.update_attributes(params[:revenue_block])
        format.html { redirect_to(@revenue_block, :notice => 'Revenue block was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @revenue_block.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @revenue_block = RevenueBlock.find(params[:id])
    @revenue_block.destroy

    respond_to do |format|
      format.html { redirect_to(revenue_blocks_url) }
      format.xml  { head :ok }
    end
  end
  def export
    @revenue_blocks = RevenueBlock.all
    html = render_to_string :layout => false
    kit = PDFKit.new(html,  :page_size => 'A4')
    send_data(kit.to_pdf, :filename => "RevenueBlock_List"+".pdf", :type => 'application/pdf')

  end
  def approve
    @revenue_block = RevenueBlock.find(params[:id])
    @revenue_block.update_attribute('status', @revenue_block.status ? false : true)
    respond_to do |format|
      format.js
    end
  end

  ########################################################
private
  def recent_items
    @recent = RevenueBlock.recent
  end
end
