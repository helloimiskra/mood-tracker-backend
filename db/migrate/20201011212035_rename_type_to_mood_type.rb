class RenameTypeToMoodType < ActiveRecord::Migration[6.0]
  def change
    rename_column :moods, :type, :mood_type
  end
end
