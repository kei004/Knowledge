class MainController < ApplicationController
  def top
  end

  def output
    @post = Post.all.page(params[:page]).per(5)
    @posts = Post.order(created_at: :asc).limit(5)
    @category = Categories.all
  end

  def about
  end
end
