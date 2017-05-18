class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredients = Ingredient.find(params[:id])
    @dishes = Dish.all
    @resturants = @ingredients.resturants
  end

  def new
		@ingredient = Ingredient.new
	end

	def create
		@ingredient = Ingredient.new(ingredient_params)
		if @ingredient.save
			redirect_to ingredients_path, :notice => "This ingredient has been added to our records."
		else
			render "new"
		end
	end

	def edit
		@ingredient = Ingredient.find(params[:id])
	end

	def update
		@ingredient = Ingredient.find(params[:id])
		if @ingredient.update_attributes(ingredient_params)
			redirect_to ingredient_path, :notice => "This ingredient has been updated in our records."
		else
			render "edit"
		end
	end

	def destroy
		@ingredient = Ingredient.find(params[:id])
		@ingredient.destroy
		redirect_to ingredients_path, :notice => "This Ingredient has been deleted."
	end

	private

	def ingredient_params
    params.require(:ingredient).permit(:name)
	end
end
