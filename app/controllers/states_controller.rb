# Controller : States
# Author     : Chaitanya Ram
# Date       : 02022012
#########################################################
class StatesController < ApplicationController
  before_filter :recent_items, :require_user
  filter_access_to :all
  layout "application", :except => [:show, :edit]

  def index
    @states = State.search(params[:search])
    @state = State.new

  end

  def show
    @state = State.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @state }
    end
  end

  def new
    @state = State.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @state }
    end
  end

  def edit
    @state = State.find(params[:id])
  end

  def create
    @state = State.new(params[:state])

    respond_to do |format|
      if @state.save
        format.html { redirect_to(states_url, :notice => 'State was successfully created.') }
        format.xml  { render :xml => @state, :status => :created, :location => @state }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @state.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @state = State.find(params[:id])

    respond_to do |format|
      if @state.update_attributes(params[:state])
        format.html { redirect_to(@state, :notice => 'State was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @state.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @state = State.find(params[:id])
    @state.destroy

    respond_to do |format|
      format.html { redirect_to(states_url) }
      format.xml  { head :ok }
    end
  end
  def export
    @states = State.all
    html = render_to_string :layout => false
    kit = PDFKit.new(html,  :page_size => 'A4',:orientation => 'Landscape')
    send_data(kit.to_pdf, :filename => "States_List"+".pdf", :type => 'application/pdf')

  end
########################################################
private
  def recent_items
    @recent = State.recent
  end
end
