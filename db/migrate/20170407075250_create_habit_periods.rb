class CreateHabitPeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :habit_periods do |t|
       t.integer :period_time
          t.text :period_method
       t.integer :habit_list_id
      t.timestamps
    end
  end
end
