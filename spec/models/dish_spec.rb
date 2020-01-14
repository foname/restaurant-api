require 'rails_helper'

RSpec.describe Dish, type: :model do

  # ensure Dish model has a m:m relationship with the Restaurant model
  it { should have_many(:restaurants) }
end
