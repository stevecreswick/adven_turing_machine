json.plot_devices @plot_devices do | plot_device |
  json.title plot_device.title
  json.message plot_device.message

  json.user_inputs plot_device.user_inputs do | user_input |
    json.partial! 'user_inputs/show', user_input: user_input
  end
end
