class RestaurantsController < ApplicationController

  RESTAURANTS = {
    1 => { name: "Sichuan Citizen", address: "Ferguson Lane", category: "sichuan" },
    2 => { name: "Blue Frog", address: "Lujiazui", category: "burgers" }
  }

  def index
    # @restaurants = Restaurant.all
    @cuisines = %w(hunan sichuan japanese)
    @food_type = params[:food_type]
    if @food_type.blank?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select { |id, r| r[:category] == @food_type  }
    end
  end

  def create
    # @restaurant = Restaurant.new(name:  params[:name], address: params[:address])
    # @restaurant.save
    raise
  end

  def show
    @id = params[:id].to_i
    @restaurant = RESTAURANTS[@id]
  end


end
