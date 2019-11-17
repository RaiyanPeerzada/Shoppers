# frozen_string_literal: true

class Product < ApplicationRecord
  validates :title, presence: true

  has_many :product_categories
  has_many :categories, through: :product_categories

  has_many :variants, class_name: 'ProductVariant'

  def thumbnail
    image.variant(resize: '200x200').processed
  end
end
