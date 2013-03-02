class AddOwnerToFeeding < ActiveRecord::Migration
  def change
    add_column :feedings, :owner, :string
  end
end
