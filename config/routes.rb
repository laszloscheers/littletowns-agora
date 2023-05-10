Rails.application.routes.draw do
  # Application routes
  get 'admin_area/index'
  get 'my_business_area/index'
  get 'my_area/index'
  resources :accommodations, only:[:index, :show]
  resources :tourist_guide, only:[:index, :show]
  resources :latest_projects, only:[:index, :show]
  resources :forum, only:[:index, :show]

  # Application resources
  resources :comments, only:[:new, :create]
  resources :posts, only:[:new, :create, :edit, :update, :destroy]
  resources :projects, only:[:new, :create, :edit, :update, :destroy]
  resources :businesses, only:[:new, :create, :edit, :update, :destroy]
  resources :tourist_guide_items, only:[:new, :create, :update, :edit, :destroy]
  devise_for :users
  
  # Defines the root path route ("/")
  root "home#index"

end
