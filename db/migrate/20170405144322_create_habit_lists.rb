class CreateHabitLists < ActiveRecord::Migration[5.0]
  def change
    create_table :habit_lists do |t|
      t.string :title
      t.text :description
      t.string :habit_type

      t.timestamps
    end
  end
end
