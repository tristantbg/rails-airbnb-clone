Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
	resources :users, only: [:index, :show] do
    resources :contracts, only: [ :index ]
  end
  resources :skills, only: [:index, :show] do
    resources :contracts, only: [ :new, :create, :update ]
  end
  root to: 'users#index'
end

