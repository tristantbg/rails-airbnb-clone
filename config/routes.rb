Rails.application.routes.draw do
	resources :skills, only: [:index, :show]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:index, :show] do
    resources :contracts, only: [:index, :new, :create, :update]
  end
  root to: 'users#index'
end
