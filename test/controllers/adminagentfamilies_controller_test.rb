require 'test_helper'

class AdminagentfamiliesControllerTest < ActionController::TestCase
  setup do
    @adminagentfamily = adminagentfamilies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminagentfamilies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminagentfamily" do
    assert_difference('Adminagentfamily.count') do
      post :create, adminagentfamily: { a_family: @adminagentfamily.a_family }
    end

    assert_redirected_to adminagentfamily_path(assigns(:adminagentfamily))
  end

  test "should show adminagentfamily" do
    get :show, id: @adminagentfamily
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminagentfamily
    assert_response :success
  end

  test "should update adminagentfamily" do
    patch :update, id: @adminagentfamily, adminagentfamily: { a_family: @adminagentfamily.a_family }
    assert_redirected_to adminagentfamily_path(assigns(:adminagentfamily))
  end

  test "should destroy adminagentfamily" do
    assert_difference('Adminagentfamily.count', -1) do
      delete :destroy, id: @adminagentfamily
    end

    assert_redirected_to adminagentfamilies_path
  end
end
