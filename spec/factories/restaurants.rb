FactoryBot.define do
  factory :restaurant do
    name { Faker::Restaurant.name }
  end

  factory :restaurant_with_dish, :parent => :restaurant do
    # dishes {[FactoryBot.create(:dish)]}
    dishes { build_list :dish, 3}
  end
  # factory :dish do
  #   name { Faker::Food.dish }
  # end


end


# FactoryBot.define do
#   factory :restaurant_with_dishes, :parent => :restaurant do |restaurant|
#     dishes { build_restaurant :dish, 3}
#   end
# end