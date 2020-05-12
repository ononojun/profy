Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  root to: "top#index"
  resources :groups, only: [:show, :edit, :update]
  resources :questions, only: [:create , :show]
  resources :answers, only: [:new, :create]
  resources :answers, only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
