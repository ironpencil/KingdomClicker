Rails.application.routes.draw do

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :samples
  resources :users
  resources :kingdoms

  get 'site/index'
  get 'about', to: 'site#about'
  get 'contact', to: 'site#contact'

  root 'site#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
