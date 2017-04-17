class HabitList < ApplicationRecord
  has_many :record_days
  has_many :habit_periods
  belongs_to :category
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
end
