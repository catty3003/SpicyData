require 'test_helper'

class AdminmatrixnamesControllerTest < ActionController::TestCase
  setup do
    @adminmatrixname = adminmatrixnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminmatrixnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminmatrixname" do
    assert_difference('Adminmatrixname.count') do
      post :create, adminmatrixname: { m_common_name: @adminmatrixname.m_common_name }
    end

    assert_redirected_to adminmatrixname_path(assigns(:adminmatrixname))
  end

  test "should show adminmatrixname" do
    get :show, id: @adminmatrixname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminmatrixname
    assert_response :success
  end

  test "should update adminmatrixname" do
    patch :update, id: @adminmatrixname, adminmatrixname: { m_common_name: @adminmatrixname.m_common_name }
    assert_redirected_to adminmatrixname_path(assigns(:adminmatrixname))
  end

  test "should destroy adminmatrixname" do
    assert_difference('Adminmatrixname.count', -1) do
      delete :destroy, id: @adminmatrixname
    end

    assert_redirected_to adminmatrixnames_path
  end
end
