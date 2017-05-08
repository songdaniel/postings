class CommentsController < ApplicationController
    def create
        comment = Comment.new
        comment.posting_id = params[:id_of_posting]
        comment.content = params[:content]
        comment.user = current_user
        comment.save
        redirect_to '/index'
    end
    
    def destroy
        @one_comment = Comment.find(params[:comment_id])
        if @one_comment.user == current_user
            @one_comment.destroy
            redirect_to '/index'
        else
            redirect_to '/index'
        end
    end
end
