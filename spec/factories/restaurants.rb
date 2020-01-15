FactoryBot.define do
  factory :restaurant do
    name { Faker::Restaurant.name }
  end

  # one restaurant has 3 dishes
  factory :restaurant_with_dish, :parent => :restaurant do
    dishes { build_list :dish, 3}
  end
end
