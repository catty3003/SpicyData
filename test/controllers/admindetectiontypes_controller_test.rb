require 'test_helper'

class AdmindetectiontypesControllerTest < ActionController::TestCase
  setup do
    @admindetectiontype = admindetectiontypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admindetectiontypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admindetectiontype" do
    assert_difference('Admindetectiontype.count') do
      post :create, admindetectiontype: { detection_method_type: @admindetectiontype.detection_method_type }
    end

    assert_redirected_to admindetectiontype_path(assigns(:admindetectiontype))
  end

  test "should show admindetectiontype" do
    get :show, id: @admindetectiontype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admindetectiontype
    assert_response :success
  end

  test "should update admindetectiontype" do
    patch :update, id: @admindetectiontype, admindetectiontype: { detection_method_type: @admindetectiontype.detection_method_type }
    assert_redirected_to admindetectiontype_path(assigns(:admindetectiontype))
  end

  test "should destroy admindetectiontype" do
    assert_difference('Admindetectiontype.count', -1) do
      delete :destroy, id: @admindetectiontype
    end

    assert_redirected_to admindetectiontypes_path
  end
end
