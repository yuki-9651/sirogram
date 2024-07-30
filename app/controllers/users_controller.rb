class UsersController < ApplicationController
  
  
  def show
      
     @user = User.find_by(name: params[:id])
    
      if @user
        @name = @user.name
        @posts = @user.posts  
      else
        redirect_to root_path, alert: "User not found"
      end
      
  end
  
  def edit
    @user = User.find_by(name: params[:id])

    if @user
      @name = @user.name
    else
      redirect_to user_path, alert: "User not found"
    end
  end
  
  def update
    @user = User.find(params[:id])

    if params[:user][:remove_profile_image] == '1'
      @user.profile_image.purge
    end

    if @user.update(user_params)
      redirect_to user_path
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
