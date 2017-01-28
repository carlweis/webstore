class AddFieldsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :list_price, :integer, default: 0
    add_column :products, :rating, :integer, default: 0
    add_column :products, :featured, :boolean, default: false
  end
end
