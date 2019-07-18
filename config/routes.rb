Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :rooms, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

      post '/rooms/new', to: 'rooms#create'
    end
  end
end
