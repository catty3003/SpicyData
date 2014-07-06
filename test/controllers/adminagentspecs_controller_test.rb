require 'test_helper'

class AdminagentspecsControllerTest < ActionController::TestCase
  setup do
    @adminagentspec = adminagentspecs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminagentspecs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminagentspec" do
    assert_difference('Adminagentspec.count') do
      post :create, adminagentspec: { a_species: @adminagentspec.a_species }
    end

    assert_redirected_to adminagentspec_path(assigns(:adminagentspec))
  end

  test "should show adminagentspec" do
    get :show, id: @adminagentspec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminagentspec
    assert_response :success
  end

  test "should update adminagentspec" do
    patch :update, id: @adminagentspec, adminagentspec: { a_species: @adminagentspec.a_species }
    assert_redirected_to adminagentspec_path(assigns(:adminagentspec))
  end

  test "should destroy adminagentspec" do
    assert_difference('Adminagentspec.count', -1) do
      delete :destroy, id: @adminagentspec
    end

    assert_redirected_to adminagentspecs_path
  end
end
