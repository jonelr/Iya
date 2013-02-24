class CreateDoctorVisits < ActiveRecord::Migration
  def change
    create_table :doctor_visits do |t|
      t.timestamp :date
      t.string :for
      t.text :comment

      t.timestamps
    end
  end
end
