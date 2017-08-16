Rails.application.routes.draw do

  resources :contracts, only: [ :index, :update ]
	 resources :users, only: [:index, :show]
  resources :skills, only: [:index, :show] do
      resources :contracts, only: [ :new, :create ]
    end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'users#index'

end

