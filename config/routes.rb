Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show, :index]

  get '/items', to: 'items#index'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
end
