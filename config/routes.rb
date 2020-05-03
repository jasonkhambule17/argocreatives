Rails.application.routes.draw do

  resources :welcome, only: [:index], :path => "home"

  root 'welcome#index'
end
