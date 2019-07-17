class AddColumnMoodIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :mood_id, :integer
  end
end
