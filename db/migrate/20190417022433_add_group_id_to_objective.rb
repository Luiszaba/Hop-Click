class AddGroupIdToObjective < ActiveRecord::Migration[5.2]
  def change
    add_column :objectives, :group_id, :integer
  end
end
