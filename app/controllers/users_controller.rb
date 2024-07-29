class UsersController < ApplicationController
  
  
  
  def mypage
    @user = current_user
    @posts = @user.posts  
  end
  
  def show
    @user = User.find(params[:id])
    @posts = @user.posts  
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    
    if params[:user][:remove_profile_image] == '1'
      @user.profile_image.purge
    end
    
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
    
  end


  private
  
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
  
end
