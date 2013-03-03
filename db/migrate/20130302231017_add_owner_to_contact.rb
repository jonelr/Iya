class AddOwnerToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :owner, :string
  end
end
