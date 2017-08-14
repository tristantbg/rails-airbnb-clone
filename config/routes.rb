Rails.application.routes.draw do
  resources :users, only: [:index]
  resources :contracts, only: [:index, :new, :create, :update]
  
  devise_for :users
  root to: 'pages#home'
end
