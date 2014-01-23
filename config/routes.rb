Casum::Engine.routes.draw do
  resources :groups
  resources :users

  root :to => 'users#index'

  delete 'logout', to: 'sessions#logout'
end
