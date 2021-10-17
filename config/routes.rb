Rails.application.routes.draw do
  root "paths#index"

  resources :paths
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end