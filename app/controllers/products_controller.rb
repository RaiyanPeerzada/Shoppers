# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @products = @category.products.includes(:variants).order(:title).page params[:page]
  end

  def show
    @product = Product.find(params[:id])
  end
end
