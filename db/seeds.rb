# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ProductVariant.destroy_all
# ProductCategory.destroy_all
# Category.destroy_all
# Product.destroy_all

# MAX_VARIANTS = 4

# # Category
# csv_file = Rails.root + 'db/products.csv'
# options = { file_encoding: 'iso-8859-1' }
# products = SmarterCSV.process('db/products.csv')

# products.each do |_product|
#   new_category = Category.find_or_create_by(title: _product[:product_type])

#   new_product = Product.new(title: _product[:name],
#                             product_type: _product[:category],
#                             description: _product[:description],
#                             price: Faker::Commerce.price,
#                             image_link: _product[:image_link],
#                             brand: _product[:brand])

#   new_product.categories << new_category

#   MAX_VARIANTS.times do
#     new_product.variants.build(
#       title: Faker::Commerce.color,
#       price: Faker::Commerce.price
#     )

#     new_product.save
#   end
# end

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
