class PlotDevice < ApplicationRecord
  belongs_to :story

  has_many :child_devices,
            class_name: "PlotDevice",
            foreign_key: "parent_device_id"

  belongs_to :parent_device,
              class_name: "PlotDevice"

  # title - for locating
  # message
  # type
  # parent_device_id
  # story_id
end
