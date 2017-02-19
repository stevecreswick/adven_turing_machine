json.story do | json |
  json.title @story.title
  json.description @story.description

  json.partial! 'tellings/index', tellings: @story.tellings

end
