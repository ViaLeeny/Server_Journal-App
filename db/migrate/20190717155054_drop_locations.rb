class DropLocations < ActiveRecord::Migration[5.2]
  def change
    drop_table :locations do |t|
      t.float :longitude
      t.float :latitude
      t.datetime null: false
      t.datetime null: false
    end
  end
end
