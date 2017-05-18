class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredients = Ingredient.find(params[:id])
    @dishes = Dish.all
    @resturants = @ingredients.resturants 
  end
end
