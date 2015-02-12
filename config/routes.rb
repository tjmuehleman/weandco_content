Rails.application.routes.draw do
  
  get 'content_block/:id/new_tool' => "tools#new", as: "content_block_tool"

  resources :tools

  resources :content_blocks

  get 'home/index'

  root 'home#index'
  
  devise_for :users
  
end
