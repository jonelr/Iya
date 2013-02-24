class CreateLookups < ActiveRecord::Migration
  def change
    create_table :lookups do |t|
      t.string :lookup_name
      t.string :lookup_key
      t.string :lookup_value

      t.timestamps
    end
  end
end
