require 'test_helper'

class AdmintreatmentmechanicalsControllerTest < ActionController::TestCase
  setup do
    @admintreatmentmechanical = admintreatmentmechanicals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admintreatmentmechanicals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admintreatmentmechanical" do
    assert_difference('Admintreatmentmechanical.count') do
      post :create, admintreatmentmechanical: { mechanical: @admintreatmentmechanical.mechanical }
    end

    assert_redirected_to admintreatmentmechanical_path(assigns(:admintreatmentmechanical))
  end

  test "should show admintreatmentmechanical" do
    get :show, id: @admintreatmentmechanical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admintreatmentmechanical
    assert_response :success
  end

  test "should update admintreatmentmechanical" do
    patch :update, id: @admintreatmentmechanical, admintreatmentmechanical: { mechanical: @admintreatmentmechanical.mechanical }
    assert_redirected_to admintreatmentmechanical_path(assigns(:admintreatmentmechanical))
  end

  test "should destroy admintreatmentmechanical" do
    assert_difference('Admintreatmentmechanical.count', -1) do
      delete :destroy, id: @admintreatmentmechanical
    end

    assert_redirected_to admintreatmentmechanicals_path
  end
end
