class Contact < ActiveRecord::Base
  attr_accessible :address, :city, :email, :firstname, :lastname, :state, :zipcode, :phone, :owner
  default_scope order('firstname asc')

  validates :firstname, :presence => true
  validates :lastname, :presence => true

  scope :by_owner, lambda { |owner| where('owner=?', owner) unless owner.nil?}
end
