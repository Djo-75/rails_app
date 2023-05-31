Rails.application.routes.draw do
  devise_for :users
  post "/sessions/user", to: "sessions#create"
  resources :items
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
