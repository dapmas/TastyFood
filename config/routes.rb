Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

devise_scope :user do
  authenticated :user do
    root 'home#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end
  get 'home/index'
  get 'home/show'

  resources :resturants
  resources :dishes
  resources :ingredients
  root :to => 'home#index'
  #root :to => "devise/sessions#new"
end
