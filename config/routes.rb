Rails.application.routes.draw do
  root "paths#index"

  resources :paths
  match '/422', via: :all, to: 'errors#unprocessable_entity'
  match '/500', via: :all, to: 'errors#server_error'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end