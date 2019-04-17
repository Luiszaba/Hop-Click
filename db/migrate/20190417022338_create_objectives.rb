class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.string :name
      t.text :description
      t.boolean :completed

      t.timestamps
    end
  end
end
