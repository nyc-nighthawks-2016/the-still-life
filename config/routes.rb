Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/spiral', to: 'staticpages#spiral'

  resources :users
  resources :practices
  resources :regimes
  resources :account_activations, only: [:edit]

  resources :password_resets, only: [:new, :create, :edit, :update]

  root 'staticpages#index'
end
