class AddAdminIdToEvents < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :admin_id, :integer
  end
end
