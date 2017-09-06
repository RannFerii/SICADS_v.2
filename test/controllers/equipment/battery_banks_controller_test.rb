require 'test_helper'

class Equipment::BatteryBanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment_battery_bank = equipment_battery_banks(:one)
  end

  test "should get index" do
    get equipment_battery_banks_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_battery_bank_url
    assert_response :success
  end

  test "should create equipment_battery_bank" do
    assert_difference('Equipment::BatteryBank.count') do
      post equipment_battery_banks_url, params: { equipment_battery_bank: { banco_baterias_type: @equipment_battery_bank.banco_baterias_type, capacidad_ah: @equipment_battery_bank.capacidad_ah, fecha_puesta_servicio: @equipment_battery_bank.fecha_puesta_servicio, marca: @equipment_battery_bank.marca, nomenclatura: @equipment_battery_bank.nomenclatura, num_celdas: @equipment_battery_bank.num_celdas, volts_totales: @equipment_battery_bank.volts_totales } }
    end

    assert_redirected_to equipment_battery_bank_url(Equipment::BatteryBank.last)
  end

  test "should show equipment_battery_bank" do
    get equipment_battery_bank_url(@equipment_battery_bank)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_battery_bank_url(@equipment_battery_bank)
    assert_response :success
  end

  test "should update equipment_battery_bank" do
    patch equipment_battery_bank_url(@equipment_battery_bank), params: { equipment_battery_bank: { banco_baterias_type: @equipment_battery_bank.banco_baterias_type, capacidad_ah: @equipment_battery_bank.capacidad_ah, fecha_puesta_servicio: @equipment_battery_bank.fecha_puesta_servicio, marca: @equipment_battery_bank.marca, nomenclatura: @equipment_battery_bank.nomenclatura, num_celdas: @equipment_battery_bank.num_celdas, volts_totales: @equipment_battery_bank.volts_totales } }
    assert_redirected_to equipment_battery_bank_url(@equipment_battery_bank)
  end

  test "should destroy equipment_battery_bank" do
    assert_difference('Equipment::BatteryBank.count', -1) do
      delete equipment_battery_bank_url(@equipment_battery_bank)
    end

    assert_redirected_to equipment_battery_banks_url
  end
end
