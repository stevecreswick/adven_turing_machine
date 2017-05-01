json.extract! user,
  :id, :created_at, :updated_at,
  :username,
  :profile_quote,
  :location,
  :about,
  :image_url

json.stories( user.stories ) do | story |
  json.title story.title
end
