class RemoveTempFromFeedings < ActiveRecord::Migration
  def up
    remove_column :feedings, :temp
  end

  def down
    add_column :feedings, :temp, :string
  end
end
