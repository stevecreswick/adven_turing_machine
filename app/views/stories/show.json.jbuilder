  json.title @story.title
  json.description @story.description
  json.id @story.id
  json.author @story.user
  json.like_count @story.likes.length
  # json.user_like @story.likes.where( { user_id: current_user.id } ) ? @story.likes.where( { user_id: current_user.id } ).first : {}

  json.plot_devices @story.plot_devices do | plot_device |
    json.partial! 'plot_devices/show', plot_device: plot_device

    json.user_inputs plot_device.user_inputs do | user_input |
      json.partial! 'user_inputs/show', user_input: user_input
    end
  end
