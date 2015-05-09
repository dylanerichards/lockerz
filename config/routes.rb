Rails.application.routes.draw do
  root 'pages#index'

  resources :bags

  resources :lockers
end
