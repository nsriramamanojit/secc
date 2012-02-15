authorization do

  role :block_admin do
    has_permission_on [:panchayats], :to => [:index, :show, :new, :create, :edit, :update,:destroy]
    has_permission_on [:enumeration_blocks], :to => [:index, :show, :new, :create, :edit, :update,:destroy]
  end

end