Rails.application.routes.draw do
  get 'customers/index', to: 'customers#index'

  get 'customers/alphebetized', to: 'customers#alphebetized'

  get 'customers/missing_email', to: 'customers#missing_email'

  root to: 'customers#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
