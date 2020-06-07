Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy]
end
