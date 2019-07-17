class DropMoods < ActiveRecord::Migration[5.2]
  def change
    drop_table :moods
  end
end
