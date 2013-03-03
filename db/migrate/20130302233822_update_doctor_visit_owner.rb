class UpdateDoctorVisitOwner < ActiveRecord::Migration
  def up
  	DoctorVisit.all.each do |f|
    	f.owner = 'joe.net@me.com'
    	f.save
    end
  end

  def down
  end
end
