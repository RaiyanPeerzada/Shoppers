# frozen_string_literal: true

class LastNameIsntRequired < ActiveRecord::Migration[6.0]
  def up
    change_column :orders, :last_name, :string, null: true
  end

  def down
    change_column :orders, :last_name, :string, null: false
  end
end
