class HabitList < ApplicationRecord
  has_many :record_days

  validates :title, presence: true
  validates :description, presence: true
  validates :habit_type, presence: true
end
