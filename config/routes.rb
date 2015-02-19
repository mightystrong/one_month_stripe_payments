Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'products#index'

  # Support Stripe payments through charges
  resources :charges

  # Routes for showing products
  resources :products, only: [:index, :show]

  # Routes for showing purchases
  resources :purchases, only: [:show]
end
