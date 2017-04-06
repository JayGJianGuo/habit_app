class RecordDay < ApplicationRecord
  belongs_to :habit_list

  validates :day_num, inclusion: { in: 1..30 }
  validates :record_content, presence: true
end
