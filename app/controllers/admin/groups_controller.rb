class Admin::GroupsController < ApplicationController
  
  layout 'admin' 
  
  def index
    @groups = Group.all
  end
  
  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to admin_groups_path
  end
  
  private

  def group_params
    params.require(:group).permit(:group_name, :group_introduction, :image)
  end
  
end
