class RemoveMoodIdFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :mood_id, :integer
  end
end
