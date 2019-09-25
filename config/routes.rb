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
    resources :departments
    resources :employees do
      collection { post :import }
    end  
  end 
end
