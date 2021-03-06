# frozen_string_literal: true

class OrdersController < ApplicationController
  def new
    @order = current_cart.order
  end

  def create
    @order = current_cart.order

    if @order.update_attributes(order_params.merge(status: 'open'))
      session[:cart_token] = nil
      redirect_to root_path
    end
  end

  private

  def order_params
    params.require(:order).permit(:first_name, :last_namer)
  end
end
