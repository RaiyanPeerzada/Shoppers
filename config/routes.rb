# frozen_string_literal: true

Rails.application.routes.draw do
  get 'products/index'
  get 'categories/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'categories#index'

  resources :categories, only: [:index] do
    resources :products, only: [:index]
  end
end
