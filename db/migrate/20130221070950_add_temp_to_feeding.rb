class AddTempToFeeding < ActiveRecord::Migration
  def change
    add_column :feedings, :temp, :string
  end
end
