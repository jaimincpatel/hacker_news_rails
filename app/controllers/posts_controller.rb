class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def new
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :url)
  end

end
