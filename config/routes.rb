Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :items
  resources :customers

  get '/login', to: 'sessions#new', as: "login"
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy', as: "logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
