require 'test_helper'

class Equipment::LightningArrestersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment_lightning_arrester = equipment_lightning_arresters(:one)
  end

  test "should get index" do
    get equipment_lightning_arresters_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_lightning_arrester_url
    assert_response :success
  end

  test "should create equipment_lightning_arrester" do
    assert_difference('Equipment::LightningArrester.count') do
      post equipment_lightning_arresters_url, params: { equipment_lightning_arrester: { apartarrayos_type: @equipment_lightning_arrester.apartarrayos_type, descarga_ka: @equipment_lightning_arrester.descarga_ka, fecha_fabricacion: @equipment_lightning_arrester.fecha_fabricacion, fecha_puesta_servicio: @equipment_lightning_arrester.fecha_puesta_servicio, kv_sist: @equipment_lightning_arrester.kv_sist, marca: @equipment_lightning_arrester.marca, nomenclatura: @equipment_lightning_arrester.nomenclatura, num_secciones: @equipment_lightning_arrester.num_secciones, num_serie: @equipment_lightning_arrester.num_serie } }
    end

    assert_redirected_to equipment_lightning_arrester_url(Equipment::LightningArrester.last)
  end

  test "should show equipment_lightning_arrester" do
    get equipment_lightning_arrester_url(@equipment_lightning_arrester)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_lightning_arrester_url(@equipment_lightning_arrester)
    assert_response :success
  end

  test "should update equipment_lightning_arrester" do
    patch equipment_lightning_arrester_url(@equipment_lightning_arrester), params: { equipment_lightning_arrester: { apartarrayos_type: @equipment_lightning_arrester.apartarrayos_type, descarga_ka: @equipment_lightning_arrester.descarga_ka, fecha_fabricacion: @equipment_lightning_arrester.fecha_fabricacion, fecha_puesta_servicio: @equipment_lightning_arrester.fecha_puesta_servicio, kv_sist: @equipment_lightning_arrester.kv_sist, marca: @equipment_lightning_arrester.marca, nomenclatura: @equipment_lightning_arrester.nomenclatura, num_secciones: @equipment_lightning_arrester.num_secciones, num_serie: @equipment_lightning_arrester.num_serie } }
    assert_redirected_to equipment_lightning_arrester_url(@equipment_lightning_arrester)
  end

  test "should destroy equipment_lightning_arrester" do
    assert_difference('Equipment::LightningArrester.count', -1) do
      delete equipment_lightning_arrester_url(@equipment_lightning_arrester)
    end

    assert_redirected_to equipment_lightning_arresters_url
  end
end
