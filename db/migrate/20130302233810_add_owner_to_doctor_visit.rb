class AddOwnerToDoctorVisit < ActiveRecord::Migration
  def change
    add_column :doctor_visits, :owner, :string
  end
end
