Rails.application.routes.draw do

  get 'reviews/new'
  get 'reviews/edit'
  get 'products/index'
  get 'products/show'
  root to: "tops#index"

  
  get 'tops/index'
  get 'tops/about'

  namespace :admins do
    devise_for :admin_users
    resource  :admin_makers, only:[:new,:create]
    resources :admin_products do
    	resources :admin_img
    end
  end 
end
