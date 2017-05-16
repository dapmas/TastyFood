class DishesController < ApplicationController

	def index
    @dishes = Dish.all
		#@search = Post.search(params[:q])
	  #@posts = @search.result
	end

	def show
    @dishes = Dish.find(params[:id])
		@resturants = Resturant.all
		@ingredients = Ingredient.all	  
    #@posts = Post.find(params[:id])
		#@user = AdminUser.all
		#@disable_sidebar = true
		#@disable_footer = true
		#@disable_pagination = true

	end

	def new
	 # @posts = Post.new
	 # @category = Category.all

	end

	def create
	 # @posts = Post.new(post_params)
          #if @posts.save
           # redirect_to posts_path, :notice=>"Your post has been saved."
         # else
           # render "new"

        #  end

	end

	def edit
	  #@posts = Post.find(params[:id])
	end

	def update
	  #@posts = Post.find(params[:id])
         # if @posts.update_attributes(post_params)
          #  redirect_to post_path, :notice => "Your Post has been updated."
          #else
          #  render "edit"
         # end
	end

	def destroy
       #  @posts = Post.find(params[:id])

        #  @posts.destroy
        #  redirect_to posts_path, :notice => "Your Post has been deleted."
	end

	private

	def dish_params
    params.require(:dish).permit(:title, :body, :resturant_id, :author_id)
	 # params.require(:post).permit(:title, :body, :category_id, :admin_user_id)
	end

end
