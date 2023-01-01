Rails.application.routes.draw do
  resources :recipes, only: [:index, :create]

  #signup
  post "/signup", to: "users#create"
  #auto-login on refresh(stay logged in)
  get "/me", to: "users#show"
  #log in
  post "/login", to: "sessions#create"
  #log out
  delete "/logout", to: "sessions#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
