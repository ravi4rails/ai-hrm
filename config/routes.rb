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
    get "/bulk_import" => "employees#bulk_import"
    resources :employee_relatives
    resources :educational_credentials
    resources :departments
    resources :employee_steps
    resources :employees do
      collection { post :import }
    end  
  end 
end
