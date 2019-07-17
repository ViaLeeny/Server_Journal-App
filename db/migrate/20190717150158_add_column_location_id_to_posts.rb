class AddColumnLocationIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :location_id, :integer
  end
end
