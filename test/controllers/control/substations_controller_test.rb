require 'test_helper'

class Control::SubstationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @control_substation = control_substations(:one)
  end

  test "should get index" do
    get control_substations_url
    assert_response :success
  end

  test "should get new" do
    get new_control_substation_url
    assert_response :success
  end

  test "should create control_substation" do
    assert_difference('Control::Substation.count') do
      post control_substations_url, params: { control_substation: { capacidad: @control_substation.capacidad, direccion: @control_substation.direccion, encargado_apellidos: @control_substation.encargado_apellidos, encargado_nombre: @control_substation.encargado_nombre, extencion: @control_substation.extencion, fecha_puesta_servicio: @control_substation.fecha_puesta_servicio, nombre_subestacion: @control_substation.nombre_subestacion, subestacion_abbr: @control_substation.subestacion_abbr } }
    end

    assert_redirected_to control_substation_url(Control::Substation.last)
  end

  test "should show control_substation" do
    get control_substation_url(@control_substation)
    assert_response :success
  end

  test "should get edit" do
    get edit_control_substation_url(@control_substation)
    assert_response :success
  end

  test "should update control_substation" do
    patch control_substation_url(@control_substation), params: { control_substation: { capacidad: @control_substation.capacidad, direccion: @control_substation.direccion, encargado_apellidos: @control_substation.encargado_apellidos, encargado_nombre: @control_substation.encargado_nombre, extencion: @control_substation.extencion, fecha_puesta_servicio: @control_substation.fecha_puesta_servicio, nombre_subestacion: @control_substation.nombre_subestacion, subestacion_abbr: @control_substation.subestacion_abbr } }
    assert_redirected_to control_substation_url(@control_substation)
  end

  test "should destroy control_substation" do
    assert_difference('Control::Substation.count', -1) do
      delete control_substation_url(@control_substation)
    end

    assert_redirected_to control_substations_url
  end
end
