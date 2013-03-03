class Contact < ActiveRecord::Base
  attr_accessible :address, :city, :email, :firstname, :lastname, :state, :zipcode, :phone, :owner
  default_scope order('firstname asc')
end
