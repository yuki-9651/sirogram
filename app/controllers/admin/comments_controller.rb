class Admin::CommentsController < ApplicationController
  

    def index
      @posts = Post.all
    end
    
    def destroy
        Comment.find(params[:id]).destroy
        redirect_to admin_comments_path(params[:post_id])
    end
end
