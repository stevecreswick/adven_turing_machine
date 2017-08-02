class AddValueToLikes < ActiveRecord::Migration[5.0]
  def change
    add_column :likes, :value, :integer
  end
end
