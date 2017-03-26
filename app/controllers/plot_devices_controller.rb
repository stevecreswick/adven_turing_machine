class PlotDevicesController < ApplicationController
  def index
  end

  def create
    # user = User.find( plot_device_params[ 'user_id' ] )
    story = Story.find( plot_device_params[ 'story_id' ] )

    if story
      plot_device = story.plot_devices.new( plot_device_params )

      if plot_device.save
        render json: plot_device
      else
        render :json => { error: 'plot_device not saved' }, :status => 422
      end
    else
      render :json => { error: 'could not find story' }, :status => 422
    end
  end

  def update
    story = Story.find( plot_device_params[ 'story_id' ] )

    if story
      plot_device = story.plot_devices.find( plot_device_params[ 'id' ] )

      if plot_device
        plot_device.update( plot_device_params )
        if plot_device.save
          render json: plot_device
        else
          render :json => { error: 'plot_device not saved' }, :status => 422
        end
      else
        render :json => { error: 'could not find plot_device' }, :status => 422
      end
    else
      render :json => { error: 'could not find story' }, :status => 422
    end
  end

  private
  def plot_device_params
    params.permit(
      :id,
      :title,
      :message,
      :type_name,
      :parent_device_id,
      :story_id,
      :user_id
    )
  end
end
