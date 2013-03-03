class AddOwnerToVaccination < ActiveRecord::Migration
  def change
    add_column :vaccinations, :owner, :string
  end
end
