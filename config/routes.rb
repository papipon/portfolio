Rails.application.routes.draw do
  root to: "tops#index"

  get 'admin_img/new'
  get 'admin_img/create'
  get 'admin_img/update'
  get 'tops/index'
  get 'tops/about'

  namespace :admins do
    devise_for :admin_users
    resources :admin_products do
    	resources :admin_img
    end
  end 
end
