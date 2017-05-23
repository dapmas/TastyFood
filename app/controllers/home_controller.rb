class HomeController < ApplicationController
  def index
    #@search = Resturant.search(params[:q])

   #@search = Ingredient.search(params[:q])
	 #@resturants = @search.result
  end



  def create
    #dish = params[:dish]
    #ingredient = params[:ingredient]
    #@resturants = Resturant.where(:email => @dish.admin.email).to_a
    #render :index
  end


  def show
    if params[:ingredient].present?
      @ingredient = Ingredient.find(params[:ingredient])
      @resturants = @ingredient.resturants
    end

    if params[:dish].present?
      @dish = Dish.find(params[:dish])
      @res = @dish.resturants
    end
  end

end
