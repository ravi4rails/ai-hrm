Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions:       'admins/sessions',
    registrations:  'admins/registrations',
    passwords:      'admins/passwords',
    unlocks:        'admins/unlocks',
    confirmations:  'admins/confirmations'
  }

  namespace :admin do
    get 'dashboard' => "sites#dashboard"
  	resources :departments
    resources :employees
  end	

end
