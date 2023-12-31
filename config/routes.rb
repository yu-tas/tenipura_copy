Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :menus, only: [:index, :show] 
  root 'menus#index'
  resources :favorites, only: [:create, :destroy]
end
