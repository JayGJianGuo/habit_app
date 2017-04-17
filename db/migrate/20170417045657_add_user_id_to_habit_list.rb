class AddUserIdToHabitList < ActiveRecord::Migration[5.0]
  def change
    add_column :habit_lists, :user_id, :integer
  end
end
