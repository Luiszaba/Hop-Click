class ChangeBooleanDefaultToFalse < ActiveRecord::Migration[5.2]
  def change
    change_column :objectives, :completed, :boolean, :default => false
  end
end
