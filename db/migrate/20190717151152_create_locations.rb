class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
