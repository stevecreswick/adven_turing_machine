json.extract! user, :id, :created_at, :updated_at
json.url user_url(user, format: :json)

json.array!( user.stories ) do | json, story |
  # json.(story, :id, :title)
end
