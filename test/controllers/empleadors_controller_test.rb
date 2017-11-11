require 'test_helper'

class EmpleadorsControllerTest < ActionController::TestCase
  setup do
    @empleador = empleadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empleadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empleador" do
    assert_difference('Empleador.count') do
      post :create, empleador: { apellidos: @empleador.apellidos, correo: @empleador.correo, nombres: @empleador.nombres, telefono: @empleador.telefono }
    end

    assert_redirected_to empleador_path(assigns(:empleador))
  end

  test "should show empleador" do
    get :show, id: @empleador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empleador
    assert_response :success
  end

  test "should update empleador" do
    patch :update, id: @empleador, empleador: { apellidos: @empleador.apellidos, correo: @empleador.correo, nombres: @empleador.nombres, telefono: @empleador.telefono }
    assert_redirected_to empleador_path(assigns(:empleador))
  end

  test "should destroy empleador" do
    assert_difference('Empleador.count', -1) do
      delete :destroy, id: @empleador
    end

    assert_redirected_to empleadors_path
  end
end
