class CommentsController < ApplicationController
    def create
        comment = Comment.new
        comment.posting_id = params[:id_of_posting]
        comment.content = params[:content]
        
        comment.save
        redirect_to '/index'
    end
end
