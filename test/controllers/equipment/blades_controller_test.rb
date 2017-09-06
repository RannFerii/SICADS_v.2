require 'test_helper'

class Equipment::BladesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment_blade = equipment_blades(:one)
  end

  test "should get index" do
    get equipment_blades_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_blade_url
    assert_response :success
  end

  test "should create equipment_blade" do
    assert_difference('Equipment::Blade.count') do
      post equipment_blades_url, params: { equipment_blade: { amp_nom: @equipment_blade.amp_nom, cuchilla_type: @equipment_blade.cuchilla_type, fecha_fabricacion: @equipment_blade.fecha_fabricacion, fecha_puesta_servicio: @equipment_blade.fecha_puesta_servicio, kv_nom: @equipment_blade.kv_nom, marca: @equipment_blade.marca, mecanismo_type: @equipment_blade.mecanismo_type, nivel_basico_impulso: @equipment_blade.nivel_basico_impulso, nomenclatura: @equipment_blade.nomenclatura, num_serie: @equipment_blade.num_serie, tension_sistema: @equipment_blade.tension_sistema } }
    end

    assert_redirected_to equipment_blade_url(Equipment::Blade.last)
  end

  test "should show equipment_blade" do
    get equipment_blade_url(@equipment_blade)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_blade_url(@equipment_blade)
    assert_response :success
  end

  test "should update equipment_blade" do
    patch equipment_blade_url(@equipment_blade), params: { equipment_blade: { amp_nom: @equipment_blade.amp_nom, cuchilla_type: @equipment_blade.cuchilla_type, fecha_fabricacion: @equipment_blade.fecha_fabricacion, fecha_puesta_servicio: @equipment_blade.fecha_puesta_servicio, kv_nom: @equipment_blade.kv_nom, marca: @equipment_blade.marca, mecanismo_type: @equipment_blade.mecanismo_type, nivel_basico_impulso: @equipment_blade.nivel_basico_impulso, nomenclatura: @equipment_blade.nomenclatura, num_serie: @equipment_blade.num_serie, tension_sistema: @equipment_blade.tension_sistema } }
    assert_redirected_to equipment_blade_url(@equipment_blade)
  end

  test "should destroy equipment_blade" do
    assert_difference('Equipment::Blade.count', -1) do
      delete equipment_blade_url(@equipment_blade)
    end

    assert_redirected_to equipment_blades_url
  end
end
