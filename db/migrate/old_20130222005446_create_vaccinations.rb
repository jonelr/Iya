class CreateVaccinations < ActiveRecord::Migration
  def change
    create_table :vaccinations do |t|
      t.string :title
      t.string :type
      t.date :date
      t.string :description

      t.timestamps
    end
  end
end
