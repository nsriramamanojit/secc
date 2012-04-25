class HomesController < ApplicationController
  before_filter :require_user
    layout "application"
  def index
    #@revenue_blocks = RevenueBlock.paginate(:page =>page, :per_page=>per_page) if has_role?(:ecil)
    @districts = District.paginate(:page =>page, :per_page=>per_page) if has_any_role?(:ecil,:admin,:manager)
    @revenue_blocks = RevenueBlock.where(:id => current_user.user_profile.revenue_block_id,:status => true).paginate(:page =>page, :per_page=>per_page) if has_any_role?(:block_admin,:block_supervisor,:block_incharge)
  end

  def manage_revenue_block
    @revenue_blocks = RevenueBlock.active.where(:district_id => params[:id]).paginate(:page =>page, :per_page=>per_page)
  end

end
