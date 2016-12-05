Rails.application.routes.draw do
  devise_for :users
  resources :customers

  resources :drinks

  resources :foods

  root 'customer#index'
end
