require 'test_helper'

class ConsultorioNsControllerTest < ActionController::TestCase
  setup do
    @consultorio_n = consultorio_ns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consultorio_ns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultorio_n" do
    assert_difference('ConsultorioN.count') do
      post :create, consultorio_n: { numero: @consultorio_n.numero, tel: @consultorio_n.tel }
    end

    assert_redirected_to consultorio_n_path(assigns(:consultorio_n))
  end

  test "should show consultorio_n" do
    get :show, id: @consultorio_n
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultorio_n
    assert_response :success
  end

  test "should update consultorio_n" do
    patch :update, id: @consultorio_n, consultorio_n: { numero: @consultorio_n.numero, tel: @consultorio_n.tel }
    assert_redirected_to consultorio_n_path(assigns(:consultorio_n))
  end

  test "should destroy consultorio_n" do
    assert_difference('ConsultorioN.count', -1) do
      delete :destroy, id: @consultorio_n
    end

    assert_redirected_to consultorio_ns_path
  end
end
