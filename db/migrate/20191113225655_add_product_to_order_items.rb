# frozen_string_literal: true

class AddProductToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :order_items, :product, null: false, foreign_key: true
  end
end
