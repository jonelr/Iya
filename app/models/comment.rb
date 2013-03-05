class Comment < ActiveRecord::Base
  attr_accessible :notes, :note_id
  belongs_to :note
  default_scope order('created_at desc')

  validates :notes, :presence => true
end
