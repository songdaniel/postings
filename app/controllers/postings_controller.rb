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
end
