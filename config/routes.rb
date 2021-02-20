Rails.application.routes.draw do
  devise_for :users
  root to: 'tours#index'
  resources :tours do
    resources :bookings, only: [:new, :create, :show]
  end
end
