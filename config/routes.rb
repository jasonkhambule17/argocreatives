Rails.application.routes.draw do

  get 'contact_us/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :welcome, only: [:index], :path => "home"

  resources :creatives, only: [:index , :show]

  resources :articles, only: [:index, :show], :path => "news"

  resources :contacts

  root 'welcome#index'
end
