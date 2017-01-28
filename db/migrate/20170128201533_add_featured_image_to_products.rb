class AddFeaturedImageToProducts < ActiveRecord::Migration[5.0]
  def up
    add_attachment :products, :featured_image
  end

  def down
    remove_attachment :products, :featured_image
  end
end
