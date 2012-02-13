authorization do

  role :district_coordinator do
    has_permission_on [:panchayats], :to => [:index, :show, :new, :create, :edit, :update,:destroy]
  end


end