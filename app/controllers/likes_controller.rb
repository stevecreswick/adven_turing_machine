class LikesController < ApplicationController
  def index
    @likes = Like.all
  end

  def create
    @user = User.find_by_auth_token( params[ 'auth_token' ] )

    if @user
      story = Story.find( like_params[ 'story_id' ] )

      if story
        like = story.likes.where( { user_id: like_params[ 'user_id' ] } )
        like = like.first

        if like.present?
          like.value === 1 ?
            like.update( { value: 0 } ) :
            like.update( { value: 1 } )

          if like.save
            render json: like
          else
            render :json => { error: 'like not saved' }, :status => 422
          end
        else
          new_like = story.likes.new( like_params )

          if new_like.save
            render :json => new_like
          else
            render :json => { error: 'like could not be saved' }, :status => 422
          end
        end
      else
        render :json => { error: 'could not find story' }, :status => 422
      end
    else
      render :json => { error: 'could not find user' }, :status => 422
    end
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
  def like_params
    params.permit( :story_id, :user_id, :value, :auth_token )
  end
end
