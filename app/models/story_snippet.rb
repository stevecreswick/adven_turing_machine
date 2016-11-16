class StorySnippet < ApplicationRecord
  belongs_to :telling
  belongs_to :plot_device

  has_many :child_snippets,
            class_name: "StorySnippet",
            foreign_key: "parent_snippet_id"

  belongs_to :parent_snippet,
              class_name: "StorySnippet"
end
