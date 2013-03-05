class RemoveCommentIdFromNote < ActiveRecord::Migration
  def up
    remove_column :notes, :comment_id
  end

  def down
    add_column :notes, :comment_id, :integer
  end
end
