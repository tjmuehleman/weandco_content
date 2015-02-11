Rails.application.routes.draw do
  
  resources :tools

  resources :content_blocks

  get 'home/index'

  root 'home#index'
  
  devise_for :users
  
end
