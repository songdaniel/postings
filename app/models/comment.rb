class Comment < ActiveRecord::Base
    belongs_to :posting
    belongs_to :user
    validates :content, presence: { message: "Empty content" }
end
