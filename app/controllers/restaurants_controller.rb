class RestaurantsController < ApplicationController

  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    if params[:food_type].blank?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select { |id, r| r[:category] == params[:food_type] }
    end
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end

  def create

  end

end
