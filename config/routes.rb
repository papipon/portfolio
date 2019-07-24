Rails.application.routes.draw do
  
  root to: "tops#index"

  
  get 'tops/index'
  get 'tops/about'
  get 'selections/home'
  get 'selections/iphone'
  get 'selections/choice'
  get 'selections/contry'
  get 'selections/pick'
  get 'selections/camera'
  get 'selections/robust'
  get 'selections/comfort'
  get 'selections/charge'
  get 'selections/music'
  get 'selections/option'
   get 'selections/colour'

  resources :products, only:[:index,:show]do
   resources :reviews, only:[:new,:edit,:destroy,:create,:update]
  end 

  namespace :admins do
    devise_for :admin_users
    resource  :admin_makers, only:[:new,:create]
    resources :admin_products do
      resources :admin_reviews,only:[:edit,:destroy,:update]
    	resources :admin_img
    end
  end 
end
