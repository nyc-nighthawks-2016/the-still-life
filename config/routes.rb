Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :practices

  resources :account_activations, only: [:edit]


  root 'staticpages#index'
end
