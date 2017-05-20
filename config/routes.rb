Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  get 'home/index'
  
  resources :resturants
  resources :dishes
  resources :ingredients
  root :to => 'home#index'
end
