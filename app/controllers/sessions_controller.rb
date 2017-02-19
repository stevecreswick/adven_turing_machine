class SessionsController < ApplicationController
  def new
  end

  def create
    if params[ :auth_token ]
      user = User.find_by_auth_token( params[ :auth_token ] )
      render json: user
    elsif params[ :username ] && params[ :password ]
      user = User.find_by_username( params[ :username ] )

      if user && user.authenticate( params[ :password ] )
        render json: user
      else
        render :json => { error: 'user not authenticated' }, :status => 422
      end
    else
      render :json => { error: 'user not authenticated' }, :status => 422
    end
  end

  def destroy
    session[ :user_id ] = nil
    redirect_to '/login'
  end

  private

  def session_params
    # params.fetch(:user, {})
    params.permit(
        :username,
        :password,
        :auth_token
      )
  end
end
