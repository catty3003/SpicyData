require 'test_helper'

class AdminagentnamesControllerTest < ActionController::TestCase
  setup do
    @adminagentname = adminagentnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminagentnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminagentname" do
    assert_difference('Adminagentname.count') do
      post :create, adminagentname: { a_common_name: @adminagentname.a_common_name }
    end

    assert_redirected_to adminagentname_path(assigns(:adminagentname))
  end

  test "should show adminagentname" do
    get :show, id: @adminagentname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminagentname
    assert_response :success
  end

  test "should update adminagentname" do
    patch :update, id: @adminagentname, adminagentname: { a_common_name: @adminagentname.a_common_name }
    assert_redirected_to adminagentname_path(assigns(:adminagentname))
  end

  test "should destroy adminagentname" do
    assert_difference('Adminagentname.count', -1) do
      delete :destroy, id: @adminagentname
    end

    assert_redirected_to adminagentnames_path
  end
end
