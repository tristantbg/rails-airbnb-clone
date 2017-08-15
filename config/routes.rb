Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :contracts, only: [:index, :create, :update]
	resources :skills, only: [:index, :show]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'users#index'
end
