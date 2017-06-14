require 'test_helper'

class ProfesionalsControllerTest < ActionController::TestCase
  setup do
    @profesional = profesionals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesionals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profesional" do
    assert_difference('Profesional.count') do
      post :create, profesional: { dni: @profesional.dni, email: @profesional.email, nombre: @profesional.nombre, telefono: @profesional.telefono }
    end

    assert_redirected_to profesional_path(assigns(:profesional))
  end

  test "should show profesional" do
    get :show, id: @profesional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profesional
    assert_response :success
  end

  test "should update profesional" do
    patch :update, id: @profesional, profesional: { dni: @profesional.dni, email: @profesional.email, nombre: @profesional.nombre, telefono: @profesional.telefono }
    assert_redirected_to profesional_path(assigns(:profesional))
  end

  test "should destroy profesional" do
    assert_difference('Profesional.count', -1) do
      delete :destroy, id: @profesional
    end

    assert_redirected_to profesionals_path
  end
end
