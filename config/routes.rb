Rails.application.routes.draw do
  
  resources :comments do
    resources :likes, only: %i[ create destroy ]
  end

  resources :posts do
    resources :likes, only: %i[ create destroy ]
  end
  
  devise_for :users
  root 'posts#index'
end
