class Story < ApplicationRecord
  belongs_to :user
  has_many :plot_devices
  has_many :likes

  # title
  # description
  # references user
  # timestamps
end
