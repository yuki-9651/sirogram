class Public::PostsController < ApplicationController
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to post_path(@post)
  end
  
  def index
    @post = Post.page(params[:page])
    
  end
  
  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @comment = Comment.new
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post= Post.find(params[:id])

    if @post.update(post_params)
      redirect_to  post_path(@post) 
    else
      render :new
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  def post_params
    params.require(:post).permit(:castle_name, :image, :body)
  end
end
