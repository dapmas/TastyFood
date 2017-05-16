Rails.application.routes.draw do
  get 'home/index'
  
  resources :resturants
  resources :dishes
  resources :ingredients
  root :to => 'home#index'
end
