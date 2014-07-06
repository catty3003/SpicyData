require 'test_helper'

class AdmintreatmentprocesstypesControllerTest < ActionController::TestCase
  setup do
    @admintreatmentprocesstype = admintreatmentprocesstypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admintreatmentprocesstypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admintreatmentprocesstype" do
    assert_difference('Admintreatmentprocesstype.count') do
      post :create, admintreatmentprocesstype: { process_type: @admintreatmentprocesstype.process_type }
    end

    assert_redirected_to admintreatmentprocesstype_path(assigns(:admintreatmentprocesstype))
  end

  test "should show admintreatmentprocesstype" do
    get :show, id: @admintreatmentprocesstype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admintreatmentprocesstype
    assert_response :success
  end

  test "should update admintreatmentprocesstype" do
    patch :update, id: @admintreatmentprocesstype, admintreatmentprocesstype: { process_type: @admintreatmentprocesstype.process_type }
    assert_redirected_to admintreatmentprocesstype_path(assigns(:admintreatmentprocesstype))
  end

  test "should destroy admintreatmentprocesstype" do
    assert_difference('Admintreatmentprocesstype.count', -1) do
      delete :destroy, id: @admintreatmentprocesstype
    end

    assert_redirected_to admintreatmentprocesstypes_path
  end
end
