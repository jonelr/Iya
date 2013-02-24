class RemoveTypeFromVaccinations < ActiveRecord::Migration
  def up
    remove_column :vaccinations, :type
  end

  def down
    add_column :vaccinations, :type, :string
  end
end
