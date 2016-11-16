class User < ApplicationRecord
  has_many :stories
  has_many :plot_devices

end
