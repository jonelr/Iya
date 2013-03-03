class UpdateContactOwner < ActiveRecord::Migration
  def up
  	Contact.all.each do |f|
    	f.owner = 'joe.net@me.com'
    	f.save
    end
  end

  def down
  end
end
