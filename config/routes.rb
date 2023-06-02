Rails.application.routes.draw do
    # Defines the root path route ("/")
  root "home#index"
  
  devise_for :users
  post "/sessions/user", to: "sessions#create"
  resources :users do
    resources :avatars, only: [:create]
  end
  resources :items


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html



end
