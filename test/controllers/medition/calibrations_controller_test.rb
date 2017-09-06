require 'test_helper'

class Medition::CalibrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medition_calibration = medition_calibrations(:one)
  end

  test "should get index" do
    get medition_calibrations_url
    assert_response :success
  end

  test "should get new" do
    get new_medition_calibration_url
    assert_response :success
  end

  test "should create medition_calibration" do
    assert_difference('Medition::Calibration.count') do
      post medition_calibrations_url, params: { medition_calibration: { fecha_calibracion: @medition_calibration.fecha_calibracion, fecha_vencimiento: @medition_calibration.fecha_vencimiento, measurement_equipment_id: @medition_calibration.measurement_equipment_id } }
    end

    assert_redirected_to medition_calibration_url(Medition::Calibration.last)
  end

  test "should show medition_calibration" do
    get medition_calibration_url(@medition_calibration)
    assert_response :success
  end

  test "should get edit" do
    get edit_medition_calibration_url(@medition_calibration)
    assert_response :success
  end

  test "should update medition_calibration" do
    patch medition_calibration_url(@medition_calibration), params: { medition_calibration: { fecha_calibracion: @medition_calibration.fecha_calibracion, fecha_vencimiento: @medition_calibration.fecha_vencimiento, measurement_equipment_id: @medition_calibration.measurement_equipment_id } }
    assert_redirected_to medition_calibration_url(@medition_calibration)
  end

  test "should destroy medition_calibration" do
    assert_difference('Medition::Calibration.count', -1) do
      delete medition_calibration_url(@medition_calibration)
    end

    assert_redirected_to medition_calibrations_url
  end
end
