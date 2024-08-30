class Public::SearchesController < ApplicationController
  
  before_action :authenticate_user!

  def search
    @range = params[:range]
    
    if @range == 'ユーザー'
      @users = User.looks(params[:search], params[:castle_name])
    elsif params[:keyword].present? && params[:keyword][0] == '#'
      @posts = Post.joins(:tags).where('tags.tag_name LIKE ?', "%#{params[:keyword].delete('#')}%").distinct
    else
      @posts = Post.looks(params[:search], params[:castle_name])
    end
  end
  
end
