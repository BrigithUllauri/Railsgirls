require 'test_helper'

class HeladosControllerTest < ActionController::TestCase
  setup do
    @helado = helados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:helados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create helado" do
    assert_difference('Helado.count') do
      post :create, helado: { Descripcion: @helado.Descripcion, Nombre: @helado.Nombre, Picture: @helado.Picture, Precio: @helado.Precio }
    end

    assert_redirected_to helado_path(assigns(:helado))
  end

  test "should show helado" do
    get :show, id: @helado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @helado
    assert_response :success
  end

  test "should update helado" do
    patch :update, id: @helado, helado: { Descripcion: @helado.Descripcion, Nombre: @helado.Nombre, Picture: @helado.Picture, Precio: @helado.Precio }
    assert_redirected_to helado_path(assigns(:helado))
  end

  test "should destroy helado" do
    assert_difference('Helado.count', -1) do
      delete :destroy, id: @helado
    end

    assert_redirected_to helados_path
  end
end
