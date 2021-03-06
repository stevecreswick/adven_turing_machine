class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title, null: false
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
