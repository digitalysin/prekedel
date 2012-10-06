OnlineShop::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :sessions
  resources :users
  root to: "home#index"
end
