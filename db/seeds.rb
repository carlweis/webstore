require "ffaker"

# seed products
100.times do
  price = rand(10000)
  Product.create!(
    name: FFaker::Product.product_name,
    description: FFaker::Lorem.sentence,
    price: price,
    list_price: rand((price+100)..20000),
    rating: rand(1..5),
    available: [true, false].sample,
    featured: [true, false].sample
  )
end
