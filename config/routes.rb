Rails.application.routes.draw do
  root 'pages#index'

  resources :bags

  resources :lockers

  get "/empty_locker/:id", to: "lockers#empty", as: "empty_locker"
end
