class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :all_resturants
  helper_method :all_ingredients
  helper_method :all_dishes


  def all_resturants
    @resturants = Resturant.all
  end


  def all_ingredients
    @ingredients = Ingredient.all
  end

  def all_dishes
    @dishes = Dish.all
  end

end
