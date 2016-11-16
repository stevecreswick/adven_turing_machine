class AddParentSnippetIdToStorySnippets < ActiveRecord::Migration[5.0]
  def change
    add_column :story_snippets, :parent_snippet_id, :integer
  end
end
