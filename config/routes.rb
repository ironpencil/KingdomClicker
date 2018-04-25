Rails.application.routes.draw do

  # static pages
  get 'site/index'
  get 'about', to: 'site#about'
  get 'contact', to: 'site#contact'

  # signup redirection
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  # sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'site#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources
  resources :samples
  resources :users
  resources :kingdoms
  resources :account_activations,   only: [:edit]
  resources :password_resets,       only: [:new, :create, :edit, :update]
end
