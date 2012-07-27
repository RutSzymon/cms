Cms::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  resources :articles, only: [:index, :show]
  resources :contacts, only: [:new, :create]
  resources :galleries, only: [:index, :show]

  root to: "articles#index"
end
