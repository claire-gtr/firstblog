Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :categories, only: [:index, :new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
