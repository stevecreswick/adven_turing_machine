  json.title @story.title
  json.description @story.description
  json.id @story.id

  json.plot_devices @story.plot_devices do | plot_device |
    json.extract! plot_device, :id, :title, :type_name, :message
  end
