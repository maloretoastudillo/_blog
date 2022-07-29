Rails.application.routes.draw do
  
  resources :comments do
    resources :likes, only: %i[ create destroy ], module: :comments
  end

  resources :posts do
    resources :likes, only: %i[ create destroy ], module: :posts
  end
  
  devise_for :users
  root 'posts#index'
end
