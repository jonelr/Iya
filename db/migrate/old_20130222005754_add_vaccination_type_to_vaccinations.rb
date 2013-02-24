class AddVaccinationTypeToVaccinations < ActiveRecord::Migration
  def change
    add_column :vaccinations, :vacination_type, :string
  end
end
