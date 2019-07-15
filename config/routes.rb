Rails.application.routes.draw do
  get 'selections/index'
  root to: "tops#index"

  
  get 'tops/index'
  get 'tops/about'

  resources :products, only:[:index,:show]do
   resources :reviews, only:[:new,:edit,:destroy,:create,:update]
  end 

  namespace :admins do
    devise_for :admin_users
    resource  :admin_makers, only:[:new,:create]
    resources :admin_products do
    	resources :admin_img
    end
  end 
end
