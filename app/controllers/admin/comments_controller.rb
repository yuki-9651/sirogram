class Admin::CommentsController < ApplicationController
   layout 'admin'

    def index
      @comments = Comment.includes(:user, :post).page(params[:page])
    end
    
    def destroy
        Comment.find(params[:id]).destroy
        redirect_to admin_comments_path(params[:post_id])
    end
end
