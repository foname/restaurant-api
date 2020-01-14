# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

thai = Restaurant.create!(name: 'Thai Restaurant')
burger = Restaurant.create!(name: 'Queen Burger')
cafe = Restaurant.create!(name: 'Tasty cafe')
pizza = Restaurant.create!(name: 'Pizza Plaza')
maxican = Restaurant.create!(name: 'Maxi Food')

tom_yum = Dish.create!(name: 'Tom Yum')
green_curry = Dish.create!(name: 'Green Curry')
pad_thai = Dish.create!(name: 'Pad Thai')
americano = Dish.create!(name: 'Americano')
matcha = Dish.create!(name: 'Matcha Latte')
chocolate = Dish.create!(name: 'Chocolate')
hawaiian = Dish.create!(name: 'Hawaiian')
meat = Dish.create!(name: 'Meat Lover')
salad = Dish.create!(name: 'Salad')
water = Dish.create!(name: 'Mineral water')

RestaurantsDish.create!(restaurant: thai, dish: tom_yum)
RestaurantsDish.create!(restaurant: thai, dish: green_curry)
RestaurantsDish.create!(restaurant: thai, dish: pad_thai)
RestaurantsDish.create!(restaurant: burger, dish: tom_yum)
RestaurantsDish.create!(restaurant: cafe, dish: matcha)
RestaurantsDish.create!(restaurant: cafe, dish: chocolate)
RestaurantsDish.create!(restaurant: cafe, dish: water)
RestaurantsDish.create!(restaurant: pizza, dish: water)
RestaurantsDish.create!(restaurant: pizza, dish: hawaiian)
RestaurantsDish.create!(restaurant: pizza, dish: meat)
RestaurantsDish.create!(restaurant: pizza, dish: salad)