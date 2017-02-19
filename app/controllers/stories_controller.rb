class StoriesController < ApplicationController
  # before_filter :authorize
  # before_action :authenticate

  def thingtodo
    MyWorker.perform_async( "Hello" )
    render plain: "Hey check this out!"
  end

  def index
    # if authenticate( story_params[ :auth_token ] )
      # user = User.find( story_params[ :user_id ] )
      @stories = Story.all
    # else
    #   render :status => 404
    # end
  end

  def show
    @story = Story.find( story_params[ :id ])
  end

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      User.find_by_auth_token( token )
    end
  end

  private
  def story_params
    params.permit( :title, :description, :user_id, :auth_token, :id )
  end
end
