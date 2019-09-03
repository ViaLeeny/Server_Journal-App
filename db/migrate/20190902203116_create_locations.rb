class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.text :name

      t.timestamps
    end
  end
end
