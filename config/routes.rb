Rails.application.routes.draw do
  get 'admin_img/new'
  get 'admin_img/create'
  get 'admin_img/update'
  get 'tops/index'
  devise_for :admin_users
  root to: "tops#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :admin_products do
  	resources :admin_img
  end
end
