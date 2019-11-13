Rails.application.routes.draw do
  devise_for :users
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  root to: 'pages#home'
  resources :products do
    resources :images, only: [:create, :new]
    resources :bookings, only: [:new,:create]
  end
  resources :bookings, only: [:index]
  resources :images, only: [:destroy]
end
