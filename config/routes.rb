Rails.application.routes.draw do
  resources :orderlines

  resources :orders

  devise_for :users
  resources :customers

  resources :drinks

  resources :foods

  root 'customer#index'
end
