class HabitPeriod < ApplicationRecord
  belongs_to :habit_list
  belongs_to :period_type
end
