Rails.application.routes.draw do
  get 'comments/index'
  get 'posts/index'
  devise_for :users
  get 'homes/index'

  resources :posts do
resources :comments
end
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
