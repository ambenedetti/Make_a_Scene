Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  resources :products do
    resources :images, only: [:create, :new]
    resources :bookings, only: [:new,:create]
  end
  resources :images, only: [:destroy]
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
