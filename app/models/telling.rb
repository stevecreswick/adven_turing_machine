class Telling < ApplicationRecord
  belongs_to :story
  has_many :story_snippets


  has_one :game_over_snippet,
          class_name: "StorySnippet"

  # End Snippet
    # No, there should be multiple endings
  # Game Over Snippet Id
    # This is if the story meter runs out
  # Story Meter
    # Integer
end
