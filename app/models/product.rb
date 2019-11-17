# frozen_string_literal: true

class Product < ApplicationRecord
  validates :title, presence: true

  has_many :product_categories
  has_many :categories, through: :product_categories

  has_many :variants, class_name: 'ProductVariant'

  mount_uploader :image, AvatarUploader

  # def thumbnail
  #   image.variant(resize: '200x200').processed
  # end
end
