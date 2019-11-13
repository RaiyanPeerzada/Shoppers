# frozen_string_literal: true

ActiveAdmin.register Product do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :price, :brand, :image_link, :product_type
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :price, :brand, :image_link, :product_type]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end