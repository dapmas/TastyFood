class ResturantsController < ApplicationController
  def index
    @resturants = Resturant.all
  end

  def show
    @resturant = Resturant.find(params[:id])
    @ingredients = Ingredient.all

  end

  def new
		@resturant = Resturant.new
	end

	def create
		@resturant = Resturant.new(resturant_params)
		if @resturant.save
			redirect_to resturants_path, :notice => "This resturant has been added to our records."
		else
			render "new"
		end
	end

	def edit
		@resturant = Resturant.find(params[:id])
	end

	def update
		@resturant = Resturant.find(params[:id])
		if @resturant.update_attributes(resturant_params)
			redirect_to resturant_path, :notice => "This resturant has been updated in our records."
		else
			render "edit"
		end
	end

	def destroy
		@resturant = Resturant.find(params[:id])
		@resturant.destroy
		redirect_to resturants_path, :notice => "This Resturant has been deleted."
	end

	private

	def resturant_params
    params.require(:resturant).permit(:name, ingredient_ids: [])
	end
end
