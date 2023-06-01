Rails.application.routes.draw do
  devise_for :users
  post "/sessions/user", to: "sessions#create"
  resources :items
  resources :users do
    resources :avatars, only: [:create]
    end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
