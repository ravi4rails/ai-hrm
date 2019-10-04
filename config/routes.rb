Rails.application.routes.draw do
  root 'admin/sites#dashboard'
  devise_for :admins, controllers: {
    sessions:       'admins/sessions',
    registrations:  'admins/registrations',
    passwords:      'admins/passwords',
    unlocks:        'admins/unlocks',
    confirmations:  'admins/confirmations'
  }

  namespace :admin do
    get "/dashboard" => "sites#dashboard"
    get "/bulk_import" => "employees#bulk_import"
    get "/manager" => "employees#manager"
    get "/subordinate" => "employees#subordinate"
    post "/assign_manager" => "employees#assign_manager"
    post "/assign_subordinate" => "employees#assign_subordinate"
    resources :employee_relatives
    resources :educational_credentials
    resources :departments
    resources :employee_steps
    resources :bank_details
    resources :employees do
      collection { post :import }
    end  
  end 
end
