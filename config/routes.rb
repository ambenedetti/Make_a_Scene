Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :products do
    resources :images, only: [:index, :create]
    resources :bookings, only: [:new,:create]
  end
  resources :images, only: [:destroy]
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
