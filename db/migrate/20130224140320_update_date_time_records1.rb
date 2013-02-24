class UpdateDateTimeRecords1 < ActiveRecord::Migration
  def up
  	Feeding.all.each do |f|
		f.datetime = f.feeding_time.change(:year => f.feeding_date.year, :month => f.feeding_date.month,:day=>f.feeding_date.day)
		f.save
  	end
  end

  def down
  end
end
