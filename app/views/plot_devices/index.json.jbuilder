json.plot_devices @plot_devices do | plot_device |
  json.title plot_device.title
  json.message plot_device.message
  # json.partial! 'stories/show', story: story
end
