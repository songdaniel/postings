class PostingsController < ApplicationController
    def index
        @all_postings = Posting.all.order('id DESC')
        @all_comments = Comment.all.order('id DESC')
    end
    
    def create
        posting  = Posting.new
        posting.title = params[:title]
        posting.body = params[:body]
        
        posting.save
        redirect_to '/index'
    end
    
    def update_view
        @one_post = Posting.find(params[:post_id])
    end
    
    def real
        @one_post = Posting.find(params[:post_id])
        @one_post.title = params[:title]
        @one_post.body = params[:body]
        
        @one_post.save
        redirect_to '/index'
    end
    
    def destroy
        @one_post = Posting.find(params[:post_id])
        @one_post.destroy
        redirect_to '/index'
    end
    
end
