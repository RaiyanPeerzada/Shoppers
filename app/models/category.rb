class Category < ApplicationRecord
  has_many :product_categories
  has_many :products, through: :product_categories
  has_one_attached :image

  def thumbnail
    image.variant(resize: '200x200').processed
  end
end
