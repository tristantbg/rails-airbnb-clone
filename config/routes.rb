Rails.application.routes.draw do
  resources :contracts, only: [:index, :new, :create, :update]
	resources :skills, only: [:index, :show]  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:show]
  root to: 'users#index'
end
