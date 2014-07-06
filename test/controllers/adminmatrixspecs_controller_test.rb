require 'test_helper'

class AdminmatrixspecsControllerTest < ActionController::TestCase
  setup do
    @adminmatrixspec = adminmatrixspecs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminmatrixspecs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminmatrixspec" do
    assert_difference('Adminmatrixspec.count') do
      post :create, adminmatrixspec: { m_species: @adminmatrixspec.m_species }
    end

    assert_redirected_to adminmatrixspec_path(assigns(:adminmatrixspec))
  end

  test "should show adminmatrixspec" do
    get :show, id: @adminmatrixspec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminmatrixspec
    assert_response :success
  end

  test "should update adminmatrixspec" do
    patch :update, id: @adminmatrixspec, adminmatrixspec: { m_species: @adminmatrixspec.m_species }
    assert_redirected_to adminmatrixspec_path(assigns(:adminmatrixspec))
  end

  test "should destroy adminmatrixspec" do
    assert_difference('Adminmatrixspec.count', -1) do
      delete :destroy, id: @adminmatrixspec
    end

    assert_redirected_to adminmatrixspecs_path
  end
end
