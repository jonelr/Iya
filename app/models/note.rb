class Note < ActiveRecord::Base
  attr_accessible :comment_id, :description, :title
  has_many :comments
  validates :title, :presence => true
end
