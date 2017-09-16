module ApplicationHelper

  def api_user( auth_token )
    # binding.pry
    puts '##########################'
    if auth_token
      puts User.find_by_auth_token( auth_token )
      return User.find_by_auth_token( auth_token )
    else
      # puts '$$$$$ No TOKEN $$$$$$$'
    end
  end
end
