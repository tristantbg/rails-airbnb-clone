Rails.application.routes.draw do

  get "users/:id/contracts/new", to: "contracts#new"
  get 'users', to: 'users#show'
  resources :contracts, only: [:index, :new, :create, :update]
	resources :skills, only: [:index, :show]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'users#index'
end
