authorization do

  role :super_admin do
    has_permission_on [:users], :to=>[:index,:show,:new,:create]
    has_permission_on [:states], :to => [:index, :show, :new, :create, :edit, :update,:destroy]
    has_permission_on [:districts], :to => [:index, :show, :new, :create, :edit, :update,:destroy]
    has_permission_on [:revenue_blocks], :to => [:index, :show, :new, :create, :edit, :update,:destroy]
    has_permission_on [:roles], :to => [:index, :show, :new, :create, :edit, :update,:destroy]


  end

  role :block_admin do
    has_permission_on [:panchayats], :to => [:index, :show, :new, :create, :edit, :update,:destroy]
    has_permission_on [:users], :to=>[:index,:show]
    has_permission_on [:enumeration_blocks], :to => [:index, :show, :new, :create, :edit, :update,:destroy,:list_all,:update_status,:status_update,:status_report,:active]
  end

  role :block_incharge do
    has_permission_on [:panchayats], :to => [:index, :show]
    has_permission_on [:enumeration_blocks], :to => [:index, :show, :list_all,:update_status,:status_update,:status_report]
  end

end