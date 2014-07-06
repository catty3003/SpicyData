require 'test_helper'

class AdmintreatmenttemperaturesControllerTest < ActionController::TestCase
  setup do
    @admintreatmenttemperature = admintreatmenttemperatures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admintreatmenttemperatures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admintreatmenttemperature" do
    assert_difference('Admintreatmenttemperature.count') do
      post :create, admintreatmenttemperature: { temperature: @admintreatmenttemperature.temperature }
    end

    assert_redirected_to admintreatmenttemperature_path(assigns(:admintreatmenttemperature))
  end

  test "should show admintreatmenttemperature" do
    get :show, id: @admintreatmenttemperature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admintreatmenttemperature
    assert_response :success
  end

  test "should update admintreatmenttemperature" do
    patch :update, id: @admintreatmenttemperature, admintreatmenttemperature: { temperature: @admintreatmenttemperature.temperature }
    assert_redirected_to admintreatmenttemperature_path(assigns(:admintreatmenttemperature))
  end

  test "should destroy admintreatmenttemperature" do
    assert_difference('Admintreatmenttemperature.count', -1) do
      delete :destroy, id: @admintreatmenttemperature
    end

    assert_redirected_to admintreatmenttemperatures_path
  end
end
