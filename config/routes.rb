Rails.application.routes.draw do
<<<<<<< HEAD
  resources :contracts, only: [:index, :new, :create, :update]
=======
  resources :contracts, only: [:index, :create, :update]
>>>>>>> 742bddd183b8ccf8c14a46775dd0bce659904fcb
	resources :skills, only: [:index, :show]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:index, :show]
  root to: 'users#index'
end
