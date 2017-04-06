class AddHabitListIdToRecordDay < ActiveRecord::Migration[5.0]
  def change
    add_column :record_days, :habit_list_id, :integer
  end
end
