class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def index
    @post = Posts.all
  end
  def show
    @post = Post.find(params[:id])
  end



  private
  def post_params
    params.require(:post).permit(:name, :body)
  end

end