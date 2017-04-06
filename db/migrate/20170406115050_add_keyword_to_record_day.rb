class AddKeywordToRecordDay < ActiveRecord::Migration[5.0]
  def change
    add_column :record_days, :keyword, :string
  end
end
