class FixStartToStartDateInEvents < ActiveRecord::Migration[7.2]
  def change
    rename_column :events, :start, :start_date
  end
end
