class Public::GroupMembershipsController < ApplicationController
  
  before_action :authenticate_user!

  def create
    @group = Group.find(params[:group_id])
    @permit = Permit.find(params[:permit_id])
    @group_membership = GroupMembership.create(user_id: @permit.user_id, group_id: params[:group_id])
    @permit.destroy 
    redirect_to request.referer
  end
  
  def destroy
    permit = current_user.permits.find_by(group_id: params[:group_id])
    permit.destroy
    redirect_to request.referer, alert: "グループへの参加申請を取消しました"
  end
    
end
