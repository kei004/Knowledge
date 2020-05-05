class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
  end


  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        @categories = Categories.find(@post.categories.id)
        count = @categories.count + 1
        @categories.update(count:count)
        format.html { redirect_to @post}
        # JS形式でレスポンスを返します。
        format.js { render @post }
      else
         format.html { redirect_to create_path }
      end
    end
  end


  private
    def post_params
      params.require(:post).permit(:title, :contents, :categories_id, :image)
    end
end
