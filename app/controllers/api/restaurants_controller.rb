class Api::RestaurantsController < ApplicationController
  
  # GET /restaurants
  def index
  if params[:dish_id].present?
      @restaurants = Dish.find(params[:dish_id]).restaurants
    else
      @restaurants = Restaurant.all
    end
    json_response(@restaurants)
  end

  # GET /restaurants/:id
  def show
    @restaurant = Restaurant.find(params[:id])
    json_response(@restaurant)
  end
end
