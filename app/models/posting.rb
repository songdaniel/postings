class Posting < ActiveRecord::Base
    has_many :comments
end
