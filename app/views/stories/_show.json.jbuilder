  json.title story.title
  json.id story.id
  json.description story.description

  json.partial! 'tellings/index', tellings: story.tellings
