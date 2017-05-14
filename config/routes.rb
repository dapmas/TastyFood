Rails.application.routes.draw do
  get 'home/index'
  
  resources :resturants
  resources :dishes
  root :to => 'home#index'
end
