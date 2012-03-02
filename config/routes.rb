Secc::Application.routes.draw do

  resources :attendances

  resources :enumeration_blocks do
    get :list_all,:on=>:member
    get :update_status, :on=>:member
    put :status_update, :on=>:member
    get :status_report, :on=>:collection
    get :status_report_export,:on=>:collection
    get :approve, :on=>:member
    get :remarks, :on=>:member

  end
  resources :panchayats do
    get :export, :on=>:collection
  end
  resources :users do
    put :csv_import,:on=>:collection
    get :upload,:on=>:collection
    get :export,:on=>:collection
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
  resources :homes

  match 'login' => "user_sessions#new", :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout

  root :to => "user_sessions#new"
  match ':controller(/:action(/:id(.:format)))'
end
