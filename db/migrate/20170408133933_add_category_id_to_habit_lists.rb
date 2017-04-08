class AddCategoryIdToHabitLists < ActiveRecord::Migration[5.0]
  def change
    add_column :habit_lists, :category_id, :integer
  end
end
