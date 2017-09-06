require 'test_helper'

class Equipment::SwitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment_switch = equipment_switches(:one)
  end

  test "should get index" do
    get equipment_switches_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_switch_url
    assert_response :success
  end

  test "should create equipment_switch" do
    assert_difference('Equipment::Switch.count') do
      post equipment_switches_url, params: { equipment_switch: { amp_nom: @equipment_switch.amp_nom, capacidad_interruptiva: @equipment_switch.capacidad_interruptiva, fecha_fabricacion: @equipment_switch.fecha_fabricacion, fecha_puesta_servicio: @equipment_switch.fecha_puesta_servicio, interruptor_type: @equipment_switch.interruptor_type, kv_nom: @equipment_switch.kv_nom, marca: @equipment_switch.marca, mecanismo_type: @equipment_switch.mecanismo_type, medio_ext: @equipment_switch.medio_ext, nivel_basico_impulso: @equipment_switch.nivel_basico_impulso, nomenclatura: @equipment_switch.nomenclatura, num_serie: @equipment_switch.num_serie, tension_fuerza: @equipment_switch.tension_fuerza, tension_sistema: @equipment_switch.tension_sistema, voltaje_control: @equipment_switch.voltaje_control } }
    end

    assert_redirected_to equipment_switch_url(Equipment::Switch.last)
  end

  test "should show equipment_switch" do
    get equipment_switch_url(@equipment_switch)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_switch_url(@equipment_switch)
    assert_response :success
  end

  test "should update equipment_switch" do
    patch equipment_switch_url(@equipment_switch), params: { equipment_switch: { amp_nom: @equipment_switch.amp_nom, capacidad_interruptiva: @equipment_switch.capacidad_interruptiva, fecha_fabricacion: @equipment_switch.fecha_fabricacion, fecha_puesta_servicio: @equipment_switch.fecha_puesta_servicio, interruptor_type: @equipment_switch.interruptor_type, kv_nom: @equipment_switch.kv_nom, marca: @equipment_switch.marca, mecanismo_type: @equipment_switch.mecanismo_type, medio_ext: @equipment_switch.medio_ext, nivel_basico_impulso: @equipment_switch.nivel_basico_impulso, nomenclatura: @equipment_switch.nomenclatura, num_serie: @equipment_switch.num_serie, tension_fuerza: @equipment_switch.tension_fuerza, tension_sistema: @equipment_switch.tension_sistema, voltaje_control: @equipment_switch.voltaje_control } }
    assert_redirected_to equipment_switch_url(@equipment_switch)
  end

  test "should destroy equipment_switch" do
    assert_difference('Equipment::Switch.count', -1) do
      delete equipment_switch_url(@equipment_switch)
    end

    assert_redirected_to equipment_switches_url
  end
end
