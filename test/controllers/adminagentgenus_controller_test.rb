require 'test_helper'

class AdminagentgenusControllerTest < ActionController::TestCase
  setup do
    @adminagentgenu = adminagentgenus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminagentgenus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminagentgenu" do
    assert_difference('Adminagentgenu.count') do
      post :create, adminagentgenu: { a_genus: @adminagentgenu.a_genus }
    end

    assert_redirected_to adminagentgenu_path(assigns(:adminagentgenu))
  end

  test "should show adminagentgenu" do
    get :show, id: @adminagentgenu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminagentgenu
    assert_response :success
  end

  test "should update adminagentgenu" do
    patch :update, id: @adminagentgenu, adminagentgenu: { a_genus: @adminagentgenu.a_genus }
    assert_redirected_to adminagentgenu_path(assigns(:adminagentgenu))
  end

  test "should destroy adminagentgenu" do
    assert_difference('Adminagentgenu.count', -1) do
      delete :destroy, id: @adminagentgenu
    end

    assert_redirected_to adminagentgenus_path
  end
end
