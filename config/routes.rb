# frozen_string_literal: true

Rails.application.routes.draw do
  get 'contact/index'
  get 'about/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'products/index'
  get 'categories/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'categories#index'

  # root 'about#index'

  resources :categories, only: [:index] do
    resources :products, only: [:index]
  end

  resources :products, only: :show
end
