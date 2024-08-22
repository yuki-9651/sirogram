class Public::UsersController < ApplicationController

  def show
    @user = User.find_by(name: params[:name])
    
    if @user
      @name = @user.name
      @posts = @user.posts.page(params[:page])
    else
      redirect_to root_path, alert: "ユーザーが見つかりません"
    end
  end
  
  def edit
    @user = User.find_by(name: params[:user_name]) 
    if @user
      @name = @user.name
    else
      redirect_to user_path, alert: "ユーザーが見つかりません"
    end
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
    params.require(:user).permit(:name, :user_name, :profile_image, :remove_profile_image)
  end
  
end
