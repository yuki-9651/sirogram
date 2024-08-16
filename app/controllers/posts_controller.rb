class PostsController < ApplicationController
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to new_post_path
  end
  
  def index
    @post = Post.page(params[:page])
  end
  
  def show
    @post = Post.new
    @comment = Comment.new
  end
  
  
  def post_params
    params.require(:post).permit(:castle_name, :image, :body)
  end
end
