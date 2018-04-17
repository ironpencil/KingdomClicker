Rails.application.routes.draw do
  resources :samples
  #resources :users
  resources :kingdoms

  get 'site/index'

  root 'site#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
