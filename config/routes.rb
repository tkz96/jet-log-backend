Rails.application.routes.draw do	
  namespace :api do	
    namespace :v1 do	
      resources :aeroplanes	
      resources :users do	
        resources :reservations	
      end	
      post "/login", to: "users#login"	
      delete '/api/logout', to: 'sessions#destroy'	
    end	
  end	
  resources :reservations	
  resources :aeroplanes	
  resources :users	
	
end