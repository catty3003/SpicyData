require 'test_helper'

class AdmintreatmentopticalsControllerTest < ActionController::TestCase
  setup do
    @admintreatmentoptical = admintreatmentopticals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admintreatmentopticals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admintreatmentoptical" do
    assert_difference('Admintreatmentoptical.count') do
      post :create, admintreatmentoptical: { optical: @admintreatmentoptical.optical }
    end

    assert_redirected_to admintreatmentoptical_path(assigns(:admintreatmentoptical))
  end

  test "should show admintreatmentoptical" do
    get :show, id: @admintreatmentoptical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admintreatmentoptical
    assert_response :success
  end

  test "should update admintreatmentoptical" do
    patch :update, id: @admintreatmentoptical, admintreatmentoptical: { optical: @admintreatmentoptical.optical }
    assert_redirected_to admintreatmentoptical_path(assigns(:admintreatmentoptical))
  end

  test "should destroy admintreatmentoptical" do
    assert_difference('Admintreatmentoptical.count', -1) do
      delete :destroy, id: @admintreatmentoptical
    end

    assert_redirected_to admintreatmentopticals_path
  end
end
