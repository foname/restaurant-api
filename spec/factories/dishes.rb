FactoryBot.define do
  factory :dish do
    name { Faker::Food.dish }
  end

  # one dish appears in 3 restaurants
  factory :dish_with_restaurant, :parent => :dish do
    restaurants { build_list :restaurant, 3}
  end
end