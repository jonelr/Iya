class CreateVaccinations < ActiveRecord::Migration
  def change
    create_table :vaccinations do |t|
      t.date :date
      t.string :description
      t.string :title
      t.string :vacination_type

      t.timestamps
    end
  end
end
