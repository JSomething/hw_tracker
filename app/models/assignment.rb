class Assignment < ActiveRecord::Base
  has_many :comments, :as => :commentable
  has_many :submissions
  belongs_to :user
end
