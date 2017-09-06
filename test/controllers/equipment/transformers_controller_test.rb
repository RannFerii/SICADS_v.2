require 'test_helper'

class Equipment::TransformersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment_transformer = equipment_transformers(:one)
  end

  test "should get index" do
    get equipment_transformers_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_transformer_url
    assert_response :success
  end

  test "should create equipment_transformer" do
    assert_difference('Equipment::Transformer.count') do
      post equipment_transformers_url, params: { equipment_transformer: { fecha_puesta_servicio: @equipment_transformer.fecha_puesta_servicio, nomenclatura: @equipment_transformer.nomenclatura, numero_activo_fijo: @equipment_transformer.numero_activo_fijo, transformador_type: @equipment_transformer.transformador_type, type: @equipment_transformer.type } }
    end

    assert_redirected_to equipment_transformer_url(Equipment::Transformer.last)
  end

  test "should show equipment_transformer" do
    get equipment_transformer_url(@equipment_transformer)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_transformer_url(@equipment_transformer)
    assert_response :success
  end

  test "should update equipment_transformer" do
    patch equipment_transformer_url(@equipment_transformer), params: { equipment_transformer: { fecha_puesta_servicio: @equipment_transformer.fecha_puesta_servicio, nomenclatura: @equipment_transformer.nomenclatura, numero_activo_fijo: @equipment_transformer.numero_activo_fijo, transformador_type: @equipment_transformer.transformador_type, type: @equipment_transformer.type } }
    assert_redirected_to equipment_transformer_url(@equipment_transformer)
  end

  test "should destroy equipment_transformer" do
    assert_difference('Equipment::Transformer.count', -1) do
      delete equipment_transformer_url(@equipment_transformer)
    end

    assert_redirected_to equipment_transformers_url
  end
end
