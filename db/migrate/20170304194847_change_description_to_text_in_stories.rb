class ChangeDescriptionToTextInStories < ActiveRecord::Migration[5.0]
  def change
    change_column :stories, :description, :text, :limit => nil
  end
end
