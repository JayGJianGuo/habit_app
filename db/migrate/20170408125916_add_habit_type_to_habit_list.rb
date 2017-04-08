class AddHabitTypeToHabitList < ActiveRecord::Migration[5.0]
  def change
    add_column :habit_lists, :habit_type_id, :integer
  end
end
