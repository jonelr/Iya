class UpdateOwnerField < ActiveRecord::Migration
  def up
  	Feeding.all.each do |f|
    	f.owner = 'joe.net@me.com'
    	f.save
    end
  end

  def down
  end
end
