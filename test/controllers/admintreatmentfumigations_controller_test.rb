require 'test_helper'

class AdmintreatmentfumigationsControllerTest < ActionController::TestCase
  setup do
    @admintreatmentfumigation = admintreatmentfumigations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admintreatmentfumigations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admintreatmentfumigation" do
    assert_difference('Admintreatmentfumigation.count') do
      post :create, admintreatmentfumigation: { fumigation_gas: @admintreatmentfumigation.fumigation_gas }
    end

    assert_redirected_to admintreatmentfumigation_path(assigns(:admintreatmentfumigation))
  end

  test "should show admintreatmentfumigation" do
    get :show, id: @admintreatmentfumigation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admintreatmentfumigation
    assert_response :success
  end

  test "should update admintreatmentfumigation" do
    patch :update, id: @admintreatmentfumigation, admintreatmentfumigation: { fumigation_gas: @admintreatmentfumigation.fumigation_gas }
    assert_redirected_to admintreatmentfumigation_path(assigns(:admintreatmentfumigation))
  end

  test "should destroy admintreatmentfumigation" do
    assert_difference('Admintreatmentfumigation.count', -1) do
      delete :destroy, id: @admintreatmentfumigation
    end

    assert_redirected_to admintreatmentfumigations_path
  end
end
