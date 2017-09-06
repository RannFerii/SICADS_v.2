require 'test_helper'

class Equipment::ReactorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment_reactor = equipment_reactors(:one)
  end

  test "should get index" do
    get equipment_reactors_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_reactor_url
    assert_response :success
  end

  test "should create equipment_reactor" do
    assert_difference('Equipment::Reactor.count') do
      post equipment_reactors_url, params: { equipment_reactor: { clase_enf: @equipment_reactor.clase_enf, fecha_fabricacion: @equipment_reactor.fecha_fabricacion, fecha_puesta_servicio: @equipment_reactor.fecha_puesta_servicio, kv_nom_at: @equipment_reactor.kv_nom_at, kv_nom_bt: @equipment_reactor.kv_nom_bt, kv_nom_terciario: @equipment_reactor.kv_nom_terciario, marca: @equipment_reactor.marca, mva: @equipment_reactor.mva, nomenclatura: @equipment_reactor.nomenclatura, num_serie: @equipment_reactor.num_serie, porcentaje_z: @equipment_reactor.porcentaje_z, reactor_type: @equipment_reactor.reactor_type } }
    end

    assert_redirected_to equipment_reactor_url(Equipment::Reactor.last)
  end

  test "should show equipment_reactor" do
    get equipment_reactor_url(@equipment_reactor)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_reactor_url(@equipment_reactor)
    assert_response :success
  end

  test "should update equipment_reactor" do
    patch equipment_reactor_url(@equipment_reactor), params: { equipment_reactor: { clase_enf: @equipment_reactor.clase_enf, fecha_fabricacion: @equipment_reactor.fecha_fabricacion, fecha_puesta_servicio: @equipment_reactor.fecha_puesta_servicio, kv_nom_at: @equipment_reactor.kv_nom_at, kv_nom_bt: @equipment_reactor.kv_nom_bt, kv_nom_terciario: @equipment_reactor.kv_nom_terciario, marca: @equipment_reactor.marca, mva: @equipment_reactor.mva, nomenclatura: @equipment_reactor.nomenclatura, num_serie: @equipment_reactor.num_serie, porcentaje_z: @equipment_reactor.porcentaje_z, reactor_type: @equipment_reactor.reactor_type } }
    assert_redirected_to equipment_reactor_url(@equipment_reactor)
  end

  test "should destroy equipment_reactor" do
    assert_difference('Equipment::Reactor.count', -1) do
      delete equipment_reactor_url(@equipment_reactor)
    end

    assert_redirected_to equipment_reactors_url
  end
end
