Rails.application.routes.draw do
  mount Rswag::Ui::Engine => "/api-docs"
  mount Rswag::Api::Engine => "/api-docs"

  namespace :api do	
    namespace :v1 do
      resources :reservations	
      resources :aeroplanes
      resources :users
      
      post "/login", to: "users#login"	
      delete '/logout', to: 'sessions#destroy'	
    end	
  end	
end
