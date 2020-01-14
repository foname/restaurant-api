class Restaurant < ApplicationRecord
	has_many :restaurants_dishes
	has_many :dishes, through: :restaurants_dishes, dependent: :destroy
	validates_presence_of :name
end
