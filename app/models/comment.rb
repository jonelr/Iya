class Comment < ActiveRecord::Base
  attr_accessible :notes, :note_id
  belongs_to :note
end
