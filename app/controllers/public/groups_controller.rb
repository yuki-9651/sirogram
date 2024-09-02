class Public::GroupsController < ApplicationController
  
    before_action :authenticate_user!
    before_action :ensure_correct_user, only: [:edit, :update]
    
    def index
      @post = Post.new 
      @groups = Group.all
    end
  
    def show
      @post = Post.new 
      @group = Group.find(params[:id])
    end
  
    def new
      @group = Group.new
    end
  
    def create
      @group = Group.new
      @group.owner_id = current_user.id
      @user = User.find_by(name: params[:name])
      
      if @group.save
        redirect_to groups_path
      else
        redirect_to user_show_by_name_path(@user)
      end
      
    end
  
    def edit
      @group = Group.find(params[:id])
    end
  
    def update
      if @group.update(group_params)
        redirect_to groups_path
      else
        render "edit"
      end
    end
    
    def destroy
      @group = Group.find(params[:id])
      @group.destroy
      redirect_to posts_path
    end
  
    private
  
    def group_params
      params.require(:group).permit(:group_name, :group_introduction, :image)
    end
  
    def ensure_correct_user
      @group = Group.find(params[:id])
      unless @group.owner_id == current_user.id
        redirect_to groups_path
      end
    end
    
  
end
