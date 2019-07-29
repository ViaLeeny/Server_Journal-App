class AddToneToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :tone, :string
  end
end
