Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'articles/index'
  resources :welcome, only: [:index], :path => "home"

  resources :articles, only: [:index], :path => "news"
  root 'welcome#index'
end
