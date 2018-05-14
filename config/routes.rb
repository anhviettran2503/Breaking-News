Rails.application.routes.draw do
  get 'index/home'
  get 'index/index'
  devise_for :admins
  resources :types
  resources :posts
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
