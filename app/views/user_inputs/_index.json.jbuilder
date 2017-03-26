json.user_inputs user_inputs do | user_input |
  json.partial! 'user_inputs/show', user_input: user_input
end
