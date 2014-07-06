require 'test_helper'

class AdminmatrixgenusControllerTest < ActionController::TestCase
  setup do
    @adminmatrixgenu = adminmatrixgenus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminmatrixgenus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminmatrixgenu" do
    assert_difference('Adminmatrixgenu.count') do
      post :create, adminmatrixgenu: { m_genus: @adminmatrixgenu.m_genus }
    end

    assert_redirected_to adminmatrixgenu_path(assigns(:adminmatrixgenu))
  end

  test "should show adminmatrixgenu" do
    get :show, id: @adminmatrixgenu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminmatrixgenu
    assert_response :success
  end

  test "should update adminmatrixgenu" do
    patch :update, id: @adminmatrixgenu, adminmatrixgenu: { m_genus: @adminmatrixgenu.m_genus }
    assert_redirected_to adminmatrixgenu_path(assigns(:adminmatrixgenu))
  end

  test "should destroy adminmatrixgenu" do
    assert_difference('Adminmatrixgenu.count', -1) do
      delete :destroy, id: @adminmatrixgenu
    end

    assert_redirected_to adminmatrixgenus_path
  end
end
