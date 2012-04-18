authorization do

  role :super_admin do
    has_permission_on [:users], :to=>[:index,:show,:new,:create,:upload,:csv_import,:export]
    has_permission_on [:roles,:states,:districts,:revenue_blocks], :to => [:index, :show, :new, :create, :edit, :update,:destroy,:export,:approve]
  end
  role :admin do
    has_permission_on [:panchayats,:attendances,:uploads], :to => [:index, :show, :new, :create, :edit, :update,:destroy,:export,:approve,:list_revenue_block,:download_dsr,:download_der,:remarks_der,:remarks_dsr]
    has_permission_on [:users], :to=>[:index,:show,:profile,:change_password,:update_profile,:profile_update]
    has_permission_on [:enumeration_blocks], :to => [:index, :show, :new, :create, :edit, :update,:destroy,:list_all,:update_status,:status_update,:status_report,:approve,:status_report_export,:remarks,:list_revenue_block,:download_eb_status_report]
  end

  role :manager do
    has_permission_on [:users,:roles,:states,:districts,:revenue_blocks], :to=>[:index,:show,:export,:profile]
    has_permission_on [:enumeration_blocks],:to=>[:index,:show,:list_all,:status_report,:status_report_export,:remarks]
  end
  role :ecil do
    has_permission_on [:users,:roles,:states,:districts,:revenue_blocks,:attendances,:uploads], :to=>[:index,:show,:export,:list_revenue_block,:profile,:remarks_dsr,:remarks_der]
    has_permission_on [:enumeration_blocks],:to=>[:index,:show,:list_all,:status_report,:status_report_export,:remarks,:list_revenue_block]
  end

  role :state_coordinator do
    has_permission_on [:panchayats,:users], :to => [:index,:show,:profile]
    has_permission_on [:enumeration_blocks], :to => [:index, :show,:list_all,:update_status,:status_update,:status_report,:status_report_export]
  end

  role :district_coordinator do
    has_permission_on [:panchayats,:users], :to => [:index,:show,:profile]
    has_permission_on [:enumeration_blocks], :to => [:index, :show,:list_all,:update_status,:status_update,:status_report,:status_report_export]
  end

  role :block_admin do
    has_permission_on [:panchayats,:attendances,:uploads], :to => [:index, :show, :new, :create, :edit, :update,:destroy,:export,:approve,:list_revenue_block,:download_dsr,:download_der,:remarks_der,:remarks_dsr]
    has_permission_on [:users], :to=>[:index,:show,:profile,:change_password,:update_profile,:profile_update]
    has_permission_on [:enumeration_blocks], :to => [:index, :show, :new, :create, :edit, :update,:destroy,:list_all,:update_status,:status_update,:status_report,:approve,:status_report_export,:remarks,:list_revenue_block,:download_eb_status_report]
  end

  role :block_incharge do
    has_permission_on [:panchayats], :to => [:index, :show]
    has_permission_on [:users], :to => [:profile]
    has_permission_on [:enumeration_blocks], :to => [:index, :show, :list_revenue_block,:update_status,:status_update,:status_report,:status_report_export]
  end

  role :block_supervisor do
    has_permission_on [:panchayats,:attendances], :to => [:index, :show,:create,:new,:edit,:update]
    has_permission_on [:enumeration_blocks], :to => [:index, :show, :list_revenue_block,:update_status,:status_update,:status_report,:status_report_export,:download_eb_status_report]
    has_permission_on [:users], :to=>[:index,:show,:profile]

  end

end