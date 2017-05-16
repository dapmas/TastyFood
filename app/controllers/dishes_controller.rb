class DishesController < ApplicationController

	def index
    @dishes = Dish.all
	end

	def show
    @dishes = Dish.find(params[:id])
		@resturants = Resturant.all
		@ingredients = Ingredient.all	  

	end

	def new

	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def dish_params
    params.require(:dish).permit(:title, :body, :resturant_id, :author_id)
	end

end
