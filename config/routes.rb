Rails.application.routes.draw do

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
