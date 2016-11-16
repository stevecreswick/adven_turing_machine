class Telling < ApplicationRecord
  belongs_to :story
  has_many :story_snippets

end
