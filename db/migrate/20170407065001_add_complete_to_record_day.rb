class AddCompleteToRecordDay < ActiveRecord::Migration[5.0]
  def change
    add_column :record_days, :complete_at, :datetime
  end
end
