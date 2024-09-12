class Public::PostsController < ApplicationController
  
  def new
    @post = Post.new
  end
  
  def create
    
    @post = Post.new(post_params)
    tag_list = params[:post][:tag_name].split(nil)
    @post.image.attach(params[:post][:image])
    @post.user_id = current_user.id
    
    if @post.save
       @post.save_posts(tag_list)
      redirect_to post_path(@post)
    else
      flash.now[:alert] = '投稿に失敗しました'
      render 'new'
    end
    
  end
  
  def index
    @post = Post.page(params[:page]).per(15)
    
    if params[:search].present?
      posts = Post.posts_serach(params[:search])
    elsif params[:tag_id].present?
      @tag = Tag.find(params[:tag_id])
      posts = @tag.items.order(created_at: :desc)
    else
      posts = Post.all.order(created_at: :desc)
    end
    
    @tag_lists = Tag.all
  end
  
  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @tags = @post.tags  
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
