# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ProductVariant.destroy_all
ProductCategory.destroy_all
Category.destroy_all
Product.destroy_all

MAX_VARIANTS = 4

# Category
csv_file = Rails.root + 'db/products.csv'
options = { file_encoding: 'iso-8859-1' }
products = SmarterCSV.process('db/products.csv')

products.each do |_product|
  new_category = Category.find_or_create_by(title: _product[:product_type])

  new_product = Product.new(title: _product[:name],
                            product_type: _product[:category],
                            description: _product[:description],
                            price: Faker::Commerce.price,
                            image_link: _product[:image_link],
                            brand: _product[:brand])

  # new_product.categories = new_category[:id]
  new_product.categories << new_category

  # stock_quantity: rand(1..50))
  MAX_VARIANTS.times do
    # for a in 1..num_variants do
    new_product.variants.build(
      title: Faker::Commerce.color,
      price: Faker::Commerce.price
    )

    new_product.save
  end
end

# PRODUCTS_COUNT = 100
# MAX_CATEGORIES = 3

# MAX_VARIANTS = 4
# VARIANTS_WEIGHT = 0.53

# CATEGORIES = Faker::Base.fetch_all('commerce.department').map do |title|
#   Category.find_or_create_by!(title: title)
# end

# PRODUCTS_COUNT.times do
#   title = ''

#   # generate unique title
#   loop do
#     title = Faker::Commerce.product_name
#     break unless Product.exists?(title: title)
#   end

#   product = Product.new(
#     title: title,
#     price: Faker::Commerce.price
#   )

#   num_categories = 1 + rand(MAX_CATEGORIES)
#   product.categories = CATEGORIES.sample(num_categories)

#   if rand > VARIANTS_WEIGHT
#     num_variants = 1 + rand(MAX_VARIANTS)
#     num_variants.times do
#       product.variants.build(
#         title: rand > VARIANTS_WEIGHT ? Faker::Commerce.color : Faker::Commerce.material,
#         price: Faker::Commerce.price
#       )
#     end
#   end

#   product.save!
# end
