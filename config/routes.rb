Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reservations
      resources :aeroplanes
      resources :users
      post "/login", to: "users#login"
      
    end
  end
  resources :reservations
  resources :aeroplanes
  resources :users
  # post "/login", to: "users#login"

end
