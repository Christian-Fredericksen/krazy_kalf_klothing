Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :items
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
