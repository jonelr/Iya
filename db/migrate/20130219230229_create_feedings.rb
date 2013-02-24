class CreateFeedings < ActiveRecord::Migration
  def change
    create_table :feedings do |t|
      t.date :feeding_date
      t.time :feeding_time
      t.string :feeding_type
      t.integer :no_of_bottles
      t.boolean :swallows_heard
      t.boolean :spit
      t.boolean :wets
      t.boolean :poops
      t.text :comments

      t.timestamps
    end
  end
end
