Rails.application.routes.draw do
  root to: 'tasks#index'

  controller :sessions do
    scope path: 's' do
      get '/login', to: 'sessions#new'
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
    end
  end

  namespace :admin do
    resources :users
  end
  
  resources :tasks do
    post :confirm, action: :confirm_new, on: :new
  end
end
