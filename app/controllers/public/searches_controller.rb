class Public::SearchesController < ApplicationController
  
  before_action :authenticate_user!

  def search
    @range = params[:range]

    if @range == 'ユーザー'
      @users = User.looks(params[:search], params[:castle_name])
    else
      @posts = Post.looks(params[:search], params[:castle_name])
    end
  end
  
end
