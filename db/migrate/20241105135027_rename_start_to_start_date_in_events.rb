class RenameStartToStartDateInEvents < ActiveRecord::Migration[7.2]
  def change
    # Renommer la colonne 'start' en 'start_date' seulement si elle existe
    if column_exists?(:events, :start)
      rename_column :events, :start, :start_date
    end
  end
end
