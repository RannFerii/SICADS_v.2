require 'test_helper'

class Medition::MeasurementEquipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medition_measurement_equipment = medition_measurement_equipments(:one)
  end

  test "should get index" do
    get medition_measurement_equipments_url
    assert_response :success
  end

  test "should get new" do
    get new_medition_measurement_equipment_url
    assert_response :success
  end

  test "should create medition_measurement_equipment" do
    assert_difference('Medition::MeasurementEquipment.count') do
      post medition_measurement_equipments_url, params: { medition_measurement_equipment: { equipo_medicion_type: @medition_measurement_equipment.equipo_medicion_type, marca: @medition_measurement_equipment.marca, modelo: @medition_measurement_equipment.modelo, num_inv_eimp: @medition_measurement_equipment.num_inv_eimp, num_serie: @medition_measurement_equipment.num_serie } }
    end

    assert_redirected_to medition_measurement_equipment_url(Medition::MeasurementEquipment.last)
  end

  test "should show medition_measurement_equipment" do
    get medition_measurement_equipment_url(@medition_measurement_equipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_medition_measurement_equipment_url(@medition_measurement_equipment)
    assert_response :success
  end

  test "should update medition_measurement_equipment" do
    patch medition_measurement_equipment_url(@medition_measurement_equipment), params: { medition_measurement_equipment: { equipo_medicion_type: @medition_measurement_equipment.equipo_medicion_type, marca: @medition_measurement_equipment.marca, modelo: @medition_measurement_equipment.modelo, num_inv_eimp: @medition_measurement_equipment.num_inv_eimp, num_serie: @medition_measurement_equipment.num_serie } }
    assert_redirected_to medition_measurement_equipment_url(@medition_measurement_equipment)
  end

  test "should destroy medition_measurement_equipment" do
    assert_difference('Medition::MeasurementEquipment.count', -1) do
      delete medition_measurement_equipment_url(@medition_measurement_equipment)
    end

    assert_redirected_to medition_measurement_equipments_url
  end
end
