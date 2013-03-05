require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  test "new contact" do
    contact = Contact.new
    contact.firstname = 'joe'
    contact.lastname = 'nel'
    assert contact.save, "Saved the contact with no firstname and/or lastname"
  end

  test "by owner" do
  	contact = Contact.by_owner('owner_1').count
  	assert contact>0, "Contact by owner_1 is null"
  end

  test "all count" do
  	contacts = Contact.all.count
  	assert contacts==2, "Contact count not correct"
  end

  test "update one" do
  	contact2 = Contact.by_owner('owner_1').first
  	contact2.firstname = "joe1"
  	contact2.lastname = "nel"
  	assert contact2.save, "Didn't save check it"

  	contact3 = Contact.by_owner('owner_1').first
  	assert contact3.firstname == "joe1", "Update didn't happen"
  end

end
