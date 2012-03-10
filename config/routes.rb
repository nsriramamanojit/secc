Secc::Application.routes.draw do

  resources :uploads do
    get :download_dsr,:on=>:member
    get :download_der,:on=>:member
    get :list_revenue_block,:on=>:member
    get :approve,:on=>:member
    get :remarks_dsr,:on=>:member
    get :remarks_der, :on=>:member
  end

  resources :attendances do
    get :approve, :on=>:member
    get :list_revenue_block,:on=>:member
    get :export,:on=>:member
  end

  resources :enumeration_blocks do
    get :list_all,:on=>:member
    get :update_status, :on=>:member
    put :status_update, :on=>:member
    get :status_report, :on=>:collection
    get :status_report_export,:on=>:collection
    get :approve, :on=>:member
    get :remarks, :on=>:member
    get :list_revenue_block,:on=>:member
    get :download_eb_status_report, :on=>:member
  end

  resources :panchayats do
    get :export, :on=>:collection
  end
  resources :users do
    put :csv_import,:on=>:collection
    get :upload,:on=>:collection
    get :export,:on=>:collection
    get :profile,:on=>:member
    get :change_password,:on=>:member
    get :update_profile,:on=>:member
    put :profile_update,:on=>:member
  end

  resources :roles
  resources :revenue_blocks do
    get :export, :on=>:collection
  end
  resources :divisions
  resources :districts do
    get :export, :on=>:collection
  end
  resources :states do
    get :export, :on=>:collection
  end
  resources :user_sessions

  resources :homes do
    get :manage_revenue_block, :on=>:member
  end

  match 'login' => "user_sessions#new", :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout

  root :to => "user_sessions#new"
  match ':controller(/:action(/:id(.:format)))'
end
