class Public::UsersController < ApplicationController
  before_action :authenticate_user!, unless: :admin_signed_in?

  def show
    @user = User.find_by(name: params[:name])
  
    if @user
      @name = @user.name
      @posts = @user.posts.page(params[:page]).per(15)
    else
      redirect_to root_path
    end
   
  end
  
  def edit
    @user = User.find_by(name: params[:user_name]) 
    if @user
      @name = @user.name
    else
      redirect_to user_path
    end
  end
  
  def withdraw
    @user = User.find(current_user.id)
    @user.update(is_active: false)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  def update
    @user = User.find(params[:id])
    if params[:user] && params[:user][:remove_profile_image] == '1'
      @user.profile_image.purge
    end

    if @user.update(user_params)
      redirect_to user_show_by_name_path(@user.name) 
    else
      render :edit
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :remove_profile_image)
  end
  
  def admin_signed_in?

    super 
  end
  
end
