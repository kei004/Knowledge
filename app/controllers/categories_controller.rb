class CategoriesController < ApplicationController
  def show
    @categories = Categories.find(params[:id])
    @post = @categories.posts.all.page(params[:page])
    @posts = Post.order(created_at: :asc).limit(5)
    @category = Categories.all
  end

  private
  def categories_params
    params.require(:categories).permit(:name, :count,:post_id)
  end
end
