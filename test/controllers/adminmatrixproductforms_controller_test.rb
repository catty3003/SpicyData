require 'test_helper'

class AdminmatrixproductformsControllerTest < ActionController::TestCase
  setup do
    @adminmatrixproductform = adminmatrixproductforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminmatrixproductforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminmatrixproductform" do
    assert_difference('Adminmatrixproductform.count') do
      post :create, adminmatrixproductform: { product_form: @adminmatrixproductform.product_form }
    end

    assert_redirected_to adminmatrixproductform_path(assigns(:adminmatrixproductform))
  end

  test "should show adminmatrixproductform" do
    get :show, id: @adminmatrixproductform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminmatrixproductform
    assert_response :success
  end

  test "should update adminmatrixproductform" do
    patch :update, id: @adminmatrixproductform, adminmatrixproductform: { product_form: @adminmatrixproductform.product_form }
    assert_redirected_to adminmatrixproductform_path(assigns(:adminmatrixproductform))
  end

  test "should destroy adminmatrixproductform" do
    assert_difference('Adminmatrixproductform.count', -1) do
      delete :destroy, id: @adminmatrixproductform
    end

    assert_redirected_to adminmatrixproductforms_path
  end
end
