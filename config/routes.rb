Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  resources :users
  resources :practices

  resources :regimes
  resources :account_activations, only: [:edit]

  resources :password_resets, only: [:new, :create, :edit, :update]

  resources :resources
  resources :audios, controller: 'resources', type: 'Audio'
  resources :images, controller: 'resources', type: 'Image'
  resources :readings, controller: 'resources', type: 'Reading'
  resources :videos, controller: 'resources', type: 'Video'
  resources :links, controller: 'resources', type: 'Link'

  root 'practices#index#homepage'
end
