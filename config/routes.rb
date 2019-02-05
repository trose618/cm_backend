Rails.application.routes.draw do

  get 'lessons/index'
  get 'lessons/create'
  get 'lessons/update'
  get 'lessons/delete'
  namespace :api do
    namespace :v1 do
      resources :conversations, only: [:index, :create]
      resources :messages, only: [:create]
      resources :users, only: [:index, :create, :update, :destroy]
      resources :lessons, only: [:index, :create, :update, :destroy]
      get '/coaches', :to => 'users#coaches'
      get '/current_user', :to => "auth#show"
      post '/login', :to => 'auth#create'
      get '/reload', :to => 'users#reload'

      mount ActionCable.server => '/cable'
    end
  end
end
