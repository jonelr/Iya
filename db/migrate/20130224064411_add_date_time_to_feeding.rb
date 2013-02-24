class AddDateTimeToFeeding < ActiveRecord::Migration
  def change
    add_column :feedings, :datetime, :timestamp
  end
end
