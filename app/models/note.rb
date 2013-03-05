class Note < ActiveRecord::Base
  attr_accessible :description, :title, :owner
  has_many :comments
  validates :title, :presence => true

  scope :by_owner, lambda { |owner| where('owner=?',owner) unless owner.nil?}
end
