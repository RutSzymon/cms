Cms::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  resources :articles, only: [:show]

  root to: "articles#index"
end
