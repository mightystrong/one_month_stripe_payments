Rails.application.routes.draw do
  root 'pages#home'

  # Support Stripe payments through charges
  resources :charges
end
