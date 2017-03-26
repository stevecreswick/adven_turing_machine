class UserInputsController < ApplicationController
  def index
  end

  def create
    plot_device = PlotDevice.find( user_input_params[ 'plot_device_id' ] )

    if plot_device
      user_input = plot_device.user_inputs.new( user_input_params )

      if user_input.save
        render json: user_input
      else
        render :json => { error: 'user_input not saved' }, :status => 422
      end
    else
      render :json => { error: 'could not find plot_device' }, :status => 422
    end
  end

  private
  def user_input_params
    params.permit(
      :title,
      :message,
      :stat_check,
      :pass_value,
      :success_message,
      :success_id,
      :failure_message,
      :failure_id,
      :plot_device_id
    )
  end
end
