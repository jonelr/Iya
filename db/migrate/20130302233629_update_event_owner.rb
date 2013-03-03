class UpdateEventOwner < ActiveRecord::Migration
  def up
  	Event.all.each do |f|
    	f.owner = 'joe.net@me.com'
    	f.save
    end
  end

  def down
  end
end
