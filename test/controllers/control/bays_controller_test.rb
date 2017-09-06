require 'test_helper'

class Control::BaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @control_bay = control_bays(:one)
  end

  test "should get index" do
    get control_bays_url
    assert_response :success
  end

  test "should get new" do
    get new_control_bay_url
    assert_response :success
  end

  test "should create control_bay" do
    assert_difference('Control::Bay.count') do
      post control_bays_url, params: { control_bay: { nomenclatura: @control_bay.nomenclatura } }
    end

    assert_redirected_to control_bay_url(Control::Bay.last)
  end

  test "should show control_bay" do
    get control_bay_url(@control_bay)
    assert_response :success
  end

  test "should get edit" do
    get edit_control_bay_url(@control_bay)
    assert_response :success
  end

  test "should update control_bay" do
    patch control_bay_url(@control_bay), params: { control_bay: { nomenclatura: @control_bay.nomenclatura } }
    assert_redirected_to control_bay_url(@control_bay)
  end

  test "should destroy control_bay" do
    assert_difference('Control::Bay.count', -1) do
      delete control_bay_url(@control_bay)
    end

    assert_redirected_to control_bays_url
  end
end
