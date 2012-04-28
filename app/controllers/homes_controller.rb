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

  def consolidate_report
    #@enumeration_blocks = EnumerationBlock.all(:group => "DATE(updated_at)") if has_any_role?(:admin,:manager)

    @ebs = EnumerationBlock.where("updated_at IS NOT NULL")
    @enumeration_blocks = @ebs.group_by{ |a| a.updated_at.to_date}.sort
  end

end
