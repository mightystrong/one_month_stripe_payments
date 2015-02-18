Rails.application.routes.draw do
  root 'pages#home'

  # Support Stripe payments through charges
  resources :charges

  # Routes for showing purchases
  resources :purchases, only: [:show]
end
