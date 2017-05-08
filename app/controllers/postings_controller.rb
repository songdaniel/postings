class PostingsController < ApplicationController
    before_action :authenticate_user! ,except: [:index]
    #require_login
    
    def index
            @all_postings = Posting.all.order('id DESC')
            @all_comments = Comment.all.order('id DESC')

    end
    
    def create
        #posting = Posting.new
        #posting.title = params[:title]
        #posting.body = params[:body]
        posting = Posting.new(title: params[:title], body: params[:body], user: current_user) 
        
        if posting.save
            redirect_to '/index'
        else
            flash[:error] = "ERROR: you didn't input the title or content"
            redirect_to '/index'
        end
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
        if @one_post.user == current_user
            @one_post.destroy
            redirect_to '/index'
        else
            redirect_to '/index'
        end
    end
    
end
