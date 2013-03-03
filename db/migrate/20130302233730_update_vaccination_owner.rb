class UpdateVaccinationOwner < ActiveRecord::Migration
  def up
  	Vaccination.all.each do |f|
    	f.owner = 'joe.net@me.com'
    	f.save
    end
  end

  def down
  end
end
