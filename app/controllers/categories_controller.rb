class CategoriesController < ApplicationController
  def show
    @categories = Categories.find(params[:id])
    @post = @categories.posts
    @category = Categories.all
  end




  private
  def categories_params
    params.require(:categories).permit(:name, :count,:post_id)
  end
end
