require 'test_helper'

class AdminMatricesControllerTest < ActionController::TestCase
  setup do
    @admin_matrix = admin_matrices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_matrices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_matrix" do
    assert_difference('AdminMatrix.count') do
      post :create, admin_matrix: { name: @admin_matrix.name }
    end

    assert_redirected_to admin_matrix_path(assigns(:admin_matrix))
  end

  test "should show admin_matrix" do
    get :show, id: @admin_matrix
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_matrix
    assert_response :success
  end

  test "should update admin_matrix" do
    patch :update, id: @admin_matrix, admin_matrix: { name: @admin_matrix.name }
    assert_redirected_to admin_matrix_path(assigns(:admin_matrix))
  end

  test "should destroy admin_matrix" do
    assert_difference('AdminMatrix.count', -1) do
      delete :destroy, id: @admin_matrix
    end

    assert_redirected_to admin_matrices_path
  end
end
