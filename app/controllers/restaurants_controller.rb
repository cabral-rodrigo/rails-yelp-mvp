class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurant = Restaurant.all
  end

  def show

  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurants_params)
  end

  private

  def restaurants_params
    params.require(@restaurant).permit(:name, :address, :phone_number, :category, :reviews)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
