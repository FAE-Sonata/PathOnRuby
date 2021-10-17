Rails.application.routes.draw do
  root "paths#index"

  get "/paths", to: "paths#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
