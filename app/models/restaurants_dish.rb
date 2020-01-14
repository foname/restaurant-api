class RestaurantsDish < ApplicationRecord
  belongs_to :restaurant
  belongs_to :dish
end
