Rails.application.routes.draw do
  resources :waiters

  resources :tables

  resources :orderlines

  resources :orders

  devise_for :users
  resources :customers

  resources :drinks

  resources :foods

  root 'customers#index'
end
