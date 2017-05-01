# json.array! @users, partial: 'users/user', as: :user
json.users @users do | user |
  json.id user.id
  json.username user.username
  # json.biography user.biography

  json.partial! 'stories/index', stories: user.stories

  # Users end
end
