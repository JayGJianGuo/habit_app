class HabitList < ApplicationRecord
  has_many :record_days
  has_many :habit_periods
  belongs_to :habit_type

  validates :title, presence: true
  validates :description, presence: true
  validates :habit_type, presence: true
end
