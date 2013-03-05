class AddOwnerToNote < ActiveRecord::Migration
  def change
    add_column :notes, :owner, :string
  end
end
