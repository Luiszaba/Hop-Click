class AddDueDateToObjectives < ActiveRecord::Migration[5.2]
  def change
    add_column :objectives, :due_date, :datetime
  end
end
