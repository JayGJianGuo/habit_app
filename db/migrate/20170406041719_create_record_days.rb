class CreateRecordDays < ActiveRecord::Migration[5.0]
  def change
    create_table :record_days do |t|
      t.integer :day_num
      t.text :record_content
      t.timestamps
    end
  end
end
