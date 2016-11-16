# json.telling do | json |
  json.title telling.title
  json.description telling.description

  json.partial! 'story_snippets/index', story_snippets: telling.story_snippets

# end
