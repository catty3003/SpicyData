require 'test_helper'

class AdmintreatmentsteamsControllerTest < ActionController::TestCase
  setup do
    @admintreatmentsteam = admintreatmentsteams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admintreatmentsteams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admintreatmentsteam" do
    assert_difference('Admintreatmentsteam.count') do
      post :create, admintreatmentsteam: { steam: @admintreatmentsteam.steam }
    end

    assert_redirected_to admintreatmentsteam_path(assigns(:admintreatmentsteam))
  end

  test "should show admintreatmentsteam" do
    get :show, id: @admintreatmentsteam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admintreatmentsteam
    assert_response :success
  end

  test "should update admintreatmentsteam" do
    patch :update, id: @admintreatmentsteam, admintreatmentsteam: { steam: @admintreatmentsteam.steam }
    assert_redirected_to admintreatmentsteam_path(assigns(:admintreatmentsteam))
  end

  test "should destroy admintreatmentsteam" do
    assert_difference('Admintreatmentsteam.count', -1) do
      delete :destroy, id: @admintreatmentsteam
    end

    assert_redirected_to admintreatmentsteams_path
  end
end
