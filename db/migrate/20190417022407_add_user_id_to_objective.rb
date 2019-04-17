class AddUserIdToObjective < ActiveRecord::Migration[5.2]
  def change
    add_column :objectives, :user_id, :integer
  end
end
