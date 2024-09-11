class Public::GroupsController < ApplicationController
    
    before_action :authenticate_user!
    before_action :ensure_correct_user, only: [:edit, :update, :destroy, :permits]
    
    def permits
      @group = Group.find(params[:id])
      @permits = @group.permits.page(params[:page])
    end
  
    def index
      @post = Post.new 
      @groups = Group.page(params[:page]).per(30)
    end
  
    def show
      #byebug
      @group = Group.find(params[:id])
      @users = @group.users.where.not(id: @group.owner_id)
      @owner_name = User.find(@group.owner_id).name
    end
    
    def join
      #byebug
      @group = Group.find(params[:group_id])
      if !@group.users.exists?(id: current_user.id)
        @group.users << current_user
      end
      redirect_to groups_path
      
    end
  
    def new
      @group = Group.new
    end
  
    def create
      #byebug
      @group = Group.new(group_params)
      @group.owner_id = current_user.id
      @user = current_user.name
      @group.users << current_user
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
      @group = Group.find(params[:id])
      if @group.update(group_params)
        redirect_to groups_path
      else
        render "edit"
      end
    end
    
    def destroy
      @group = Group.find(params[:id])
      @group.destroy
      redirect_to groups_path
    end
  
    private
  
    def group_params
      params.require(:group).permit(:group_name, :group_introduction, :image)
    end
  
    def ensure_correct_user
      @group = Group.find(params[:id])
      unless @group.owner_id == current_user.id
        redirect_to group_path(@group), alert: "グループオーナーのみ編集が可能です"
      end
    end
    
  
end
