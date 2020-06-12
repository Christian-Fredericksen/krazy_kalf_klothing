Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :items
  resources :customers

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/create', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
