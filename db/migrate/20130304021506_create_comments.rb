class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :notes

      t.timestamps
    end
  end
end
