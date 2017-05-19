class DishesController < ApplicationController
	before_action :authenticate_user!, ecxept:[:index, :show]
	def index
    @dishes = Dish.all
	end

	def show
    @dish = Dish.find(params[:id])
		@resturants = Resturant.all
		@ingredients = Ingredient.all

	end

	def new
		#@dish = Dish.new
		@dish = current_user.dishes.build
	end

	def create
		#@dish = Dish.new(dish_params)
		@dish = current_user.dishes.build(dish_params)
		if @dish.save
			redirect_to dishes_path, :notice => "This dish has been added to our records."
		else
			render "new"
		end
	end

	def edit
		@dish = Dish.find(params[:id])
	end

	def update
		@dish = Dish.find(params[:id])
		if @dish.update_attributes(dish_params)
			redirect_to dish_path, :notice => "This dish has been updated in our records."
		else
			render "edit"
		end
	end

	def destroy
		@dish = Dish.find(params[:id])
		@dish.destroy
		redirect_to dishes_path, :notice => "Your Dish has been deleted."
	end

	private

	def dish_params
    params.require(:dish).permit(:title, :body, :user, ingredient_ids: [])
	end

end
