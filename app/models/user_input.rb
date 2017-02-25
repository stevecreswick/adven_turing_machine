class UserInput < ApplicationRecord

  belongs_to :story_snippet

  has_one :success_snippet,
            class_name: "StorySnippet",
            foreign_key: "success_snippet_id"

  has_one :failure_snippet,
            class_name: "StorySnippet",
            foreign_key: "failure_snippet_id"

end
