class PlotDevice < ApplicationRecord
  belongs_to :user
  has_many :story_snippets
end
