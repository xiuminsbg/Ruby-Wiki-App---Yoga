class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :back
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:comment)
  end

end
