Rails.application.routes.draw do
  resources :contracts, only: [:index, :new, :create, :update]
  resources :users, only: [:index]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
