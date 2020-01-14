class Api::DishesController < ApplicationController
  
  # GET /dishes
  def index
  	if params[:restaurant_id].present?
      @dishes = Restaurant.find(params[:restaurant_id]).dishes
    else
      @dishes = Dish.all
    end
    json_response(@dishes)
  end

  # GET /dishes/:id
  def show
    @dish = Dish.find(params[:id])
    json_response(@dish)
  end
end
