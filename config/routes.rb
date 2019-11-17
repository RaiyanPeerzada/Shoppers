# frozen_string_literal: true

Rails.application.routes.draw do
  get 'contact/index'
  get 'about/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'products/index'
  get 'categories/index'
  get 'products/show'
  get 'products/show_all_products'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'categories#index'


  # root 'about#index'

  resources :categories, only: [:index] do
    resources :products, only: [:index]
  end

  resources :products, only: :show do
    collection do
      get 'products_index'
    end
  end

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'

  get '/cart/checkout', to: 'orders#new', as: :checkout
  patch '/cart/checkout', to: 'orders#create'

  devise_for :users, controllers: {
    registrations: 'registrations'
  }
end
