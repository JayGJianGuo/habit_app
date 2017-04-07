class HabitPeriod < ApplicationRecord
  belongs_to :habit_list
  has_many :record_days
end
