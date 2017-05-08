class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  
  def require_login
    if user_signed_in?
      @all_postings = Posting.all.order('id DESC')
      @all_comments = Comment.all.order('id DESC')
    else
      redirect_to '/users/sign_in'
    end
  end
end
