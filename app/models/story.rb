class Story < ApplicationRecord
  belongs_to :user
  has_many :plot_devices

  # title
  # description
  # references user
  # timestamps
end
