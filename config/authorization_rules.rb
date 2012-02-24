authorization do

  role :super_admin do
    has_permission_on [:users], :to=>[:index,:show,:new,:create,:upload,:csv_import]
    has_permission_on [:states], :to => [:index, :show, :new, :create, :edit, :update,:destroy]
    has_permission_on [:districts], :to => [:index, :show, :new, :create, :edit, :update,:destroy]
    has_permission_on [:revenue_blocks], :to => [:index, :show, :new, :create, :edit, :update,:destroy]
    has_permission_on [:roles], :to => [:index, :show, :new, :create, :edit, :update,:destroy]
  end

  role :block_admin do
    has_permission_on [:panchayats], :to => [:index, :show, :new, :create, :edit, :update,:destroy,:export]
    has_permission_on [:users], :to=>[:index,:show]
    has_permission_on [:enumeration_blocks], :to => [:index, :show, :new, :create, :edit, :update,:destroy,:list_all,:update_status,:status_update,:status_report,:approve,:status_report_export]
  end

  role :block_incharge do
    has_permission_on [:panchayats], :to => [:index, :show]
    has_permission_on [:enumeration_blocks], :to => [:index, :show, :list_all,:update_status,:status_update,:status_report,:status_report_export]
  end

  role :block_supervisor do
    has_permission_on [:panchayats], :to => [:index, :show]
    has_permission_on [:enumeration_blocks], :to => [:index, :show, :list_all,:update_status,:status_update,:status_report,:status_report_export]
  end

  role :district_coordinator do
    has_permission_on [:panchayats], :to => [:index, :show]
    has_permission_on [:users], :to=>[:index,:show]
    has_permission_on [:enumeration_blocks], :to => [:index, :show,:list_all,:update_status,:status_update,:status_report,:status_report_export]
  end


end