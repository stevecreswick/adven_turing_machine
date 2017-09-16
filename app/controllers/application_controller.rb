class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  include ApplicationHelper

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end

  # def authenticate( auth_token )
  #   User.find_by_auth_token( auth_token )
  # end
end


# Remove tellings
# Remove all tellings related models/controllers/views

# Remove story_snippets
# Remove story_snippets stuffs

# Add parent_device_id to plot_device

# Add story meter to story
# Add game over snippet id
