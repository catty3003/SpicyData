require 'test_helper'

class AdminmatrixstorageformsControllerTest < ActionController::TestCase
  setup do
    @adminmatrixstorageform = adminmatrixstorageforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminmatrixstorageforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminmatrixstorageform" do
    assert_difference('Adminmatrixstorageform.count') do
      post :create, adminmatrixstorageform: { storage_form: @adminmatrixstorageform.storage_form }
    end

    assert_redirected_to adminmatrixstorageform_path(assigns(:adminmatrixstorageform))
  end

  test "should show adminmatrixstorageform" do
    get :show, id: @adminmatrixstorageform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminmatrixstorageform
    assert_response :success
  end

  test "should update adminmatrixstorageform" do
    patch :update, id: @adminmatrixstorageform, adminmatrixstorageform: { storage_form: @adminmatrixstorageform.storage_form }
    assert_redirected_to adminmatrixstorageform_path(assigns(:adminmatrixstorageform))
  end

  test "should destroy adminmatrixstorageform" do
    assert_difference('Adminmatrixstorageform.count', -1) do
      delete :destroy, id: @adminmatrixstorageform
    end

    assert_redirected_to adminmatrixstorageforms_path
  end
end
