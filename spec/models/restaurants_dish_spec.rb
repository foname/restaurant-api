require 'rails_helper'

RSpec.describe RestaurantsDish, type: :model do
  it { should belong_to(:restaurant) }
  it { should belong_to(:dish) }
end
