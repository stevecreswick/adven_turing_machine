  json.id like.id
  # json.type_name plot_device.type_name
  json.user_id like.user_id
  json.story_id like.story_id

  # json.extract! plot_device, :id, :title, :type_name, :message

  # json.partial! 'user_inputs/index', user_inputs: plot_device.user_inputs
