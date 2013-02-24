class Contact < ActiveRecord::Base
  attr_accessible :address, :city, :email, :firstname, :lastname, :state, :zipcode, :phone
end
