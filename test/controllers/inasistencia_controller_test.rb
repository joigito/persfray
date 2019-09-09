require 'test_helper'

class InasistenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inasistencium = inasistencia(:one)
  end

  test "should get index" do
    get inasistencia_url
    assert_response :success
  end

  test "should get new" do
    get new_inasistencium_url
    assert_response :success
  end

  test "should create inasistencium" do
    assert_difference('Inasistencium.count') do
      post inasistencia_url, params: { inasistencium: { aviso: @inasistencium.aviso, causa: @inasistencium.causa, fechadesde: @inasistencium.fechadesde, fechahasta: @inasistencium.fechahasta, personal_id: @inasistencium.personal_id } }
    end

    assert_redirected_to inasistencium_url(Inasistencium.last)
  end

  test "should show inasistencium" do
    get inasistencium_url(@inasistencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_inasistencium_url(@inasistencium)
    assert_response :success
  end

  test "should update inasistencium" do
    patch inasistencium_url(@inasistencium), params: { inasistencium: { aviso: @inasistencium.aviso, causa: @inasistencium.causa, fechadesde: @inasistencium.fechadesde, fechahasta: @inasistencium.fechahasta, personal_id: @inasistencium.personal_id } }
    assert_redirected_to inasistencium_url(@inasistencium)
  end

  test "should destroy inasistencium" do
    assert_difference('Inasistencium.count', -1) do
      delete inasistencium_url(@inasistencium)
    end

    assert_redirected_to inasistencia_url
  end
end
