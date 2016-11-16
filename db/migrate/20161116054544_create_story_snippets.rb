class CreateStorySnippets < ActiveRecord::Migration[5.0]
  def change
    create_table :story_snippets do |t|
      t.string :title
      t.string :message
      t.references :telling, foreign_key: true
      t.references :plot_device, foreign_key: true

      t.timestamps
    end
  end
end
