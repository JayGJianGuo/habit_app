class AddPeriodTypeIdToHabitPeriods < ActiveRecord::Migration[5.0]
  def change
    add_column :habit_periods, :period_type_id, :string
  end
end
