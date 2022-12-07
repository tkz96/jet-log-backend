Rails.application.routes.draw do
  get 'login/create'
  post '/signup', to: 'users#create'
  namespace :api do
    namespace :v1 do
      resources :reservations
      resources :aeroplanes
      resources :users
    end
  end
  resources :reservations
  resources :aeroplanes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
