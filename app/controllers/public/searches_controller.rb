class Public::SearchesController < ApplicationController
  
  before_action :authenticate_user!

  def search
    @range = params[:range]

    if @range == "ユーザー"
      @user = User.looks(params[:search], params[:name])
    else
      @posts = Post.looks(params[:search], params[:castle_name])
    end
  end
  
end
