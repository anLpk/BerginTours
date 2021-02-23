Rails.application.routes.draw do
  devise_for :users
  
  root to: 'tours#index'

  authenticated :user do
    root to: 'pages#dashboard', as: :authenticated_root
  end

  resources :tours do
    resources :bookings, only: [:new, :create]
  end
  
  resources :bookings, only: [:edit, :update] do
    resources :reviews, only: [:new, :create]
  end


  get '/dashboard', to: 'pages#dashboard'
end
