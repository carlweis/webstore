class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, default: ''
      t.text :description, default: ''
      t.integer :quantity, default: 100
      t.integer :price, default: 0
      t.boolean :available, default: true
    end
  end
end
