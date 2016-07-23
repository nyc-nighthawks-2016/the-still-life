Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/spiral', to: 'staticpages#spiral'

  resources :users
  resources :practices
<<<<<<< 6e2aece2099d642c03ae0986d34a8958fe70c32b
  resources :regimes
  resources :account_activations, only: [:edit]

  resources :password_resets, only: [:new, :create, :edit, :update]
=======
  resources :resources
  resources :audios, controller: 'resources', type: 'Audio'
  resources :images, controller: 'resources', type: 'Image'
  resources :readings, controller: 'resources', type: 'Reading'
  resources :videos, controller: 'resources', type: 'Video'
>>>>>>> creates show pages for all resources, general and specific

  root 'staticpages#index'
end
