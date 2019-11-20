Rails.application.routes.draw do
  
  get 'orders/new'
  devise_for :admin_users, ActiveAdmin::Devise.config
  get 'products/index'
  get 'products/show'
  get 'products/show_all_pros'
  get 'categories/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root 'categories#index'

  resources :products, only: :show do
    collection do
      get 'products_index'
    end
  end

  resources :categories, only: [:index] do
    resources :products, only: [:index]
  end

  devise_for :users

  # devise_for :users, controllers: {
  #   registrations: 'registrations'
  # }

  # New 
  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'

  get '/cart/checkout', to: 'orders#new', as: :checkout
  patch '/cart/checkout', to: 'orders#create'

  ActiveAdmin.routes(self)
end


