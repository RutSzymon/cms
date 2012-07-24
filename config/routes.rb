Cms::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  resources :articles, only: [:index, :show]
  resources :contacts, only: [:new, :create]

  root to: "articles#index"
end
