Rails.application.routes.draw do
  get 'tops/index'
  devise_for :admin_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :admin_products
end
