class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def new
  end

  def edit
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_text)
  end

end
