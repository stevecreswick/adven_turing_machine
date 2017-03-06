require 'test_helper'

class PlotDevicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plot_devices_index_url
    assert_response :success
  end

  test "should get create" do
    get plot_devices_create_url
    assert_response :success
  end

end
