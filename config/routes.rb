Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  root to: 'tours#index'

  authenticated :user do
    root to: 'pages#dashboard', as: :authenticated_root
  end

  resources :tours do
    resources :bookings, only: [:new, :create]
  end
  
  resources :bookings, only: [:edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end

  resources :carts, only: [:show, :update]

  resources :articles, only: [:index, :show]

  # patch 'carts/:id/discount', to: 'carts#discount', as: :discount

  get '/dashboard', to: 'pages#dashboard'
  get '/about_us', to: 'pages#about_us'
  get '/expert_team', to: 'pages#expert_team'
  get '/contact_us', to: 'pages#contact_us'
  get '/terms_and_conditions', to: 'pages#terms_and_conditions'
  get '/faq', to: 'pages#faq'
  get '/cancellation_and_refund', to: 'pages#cancellation_and_refund'
end
