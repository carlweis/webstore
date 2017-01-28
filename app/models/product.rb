class Product < ActiveRecord::Base
  def display_price
    price / 100.0
  end
end
