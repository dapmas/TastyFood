class ResturantsController < ApplicationController
  def index
    @resturants = Resturant.all
  end

  def show
    @resturant = Resturant.find(params[:id])
    @title = @resturant.name
    @ingredients = @resturant.ingredients
    #@disable_pagination = true
  end
end
