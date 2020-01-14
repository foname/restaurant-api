class Dish < ApplicationRecord
	has_many :restaurants_dishes
	has_many :restaurants, through: :restaurants_dishes, dependent: :destroy

	validates_presence_of :name
end
