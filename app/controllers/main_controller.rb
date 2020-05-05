class MainController < ApplicationController
  def top
  end

  def output
    @post = Post.where(id:1..5)
    @category = Categories.all
  end

  def about
  end
end
