class AddGameOverSnippetToTellings < ActiveRecord::Migration[5.0]
  def change
    add_column :tellings, :game_over_snippet_id, :integer
  end
end
