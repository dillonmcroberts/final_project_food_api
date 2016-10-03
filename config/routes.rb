Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/hello', to: 'sessions#hello'
      post '/login', to: 'sessions#create'
      resources :sessions
      resources :likes
      resources :menus
      resources :comments
      resources :ingredients
      resources :recipes
      resources :users


    end
  end
end
