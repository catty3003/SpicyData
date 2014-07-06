require 'test_helper'

class AdminmatrixplantpartsControllerTest < ActionController::TestCase
  setup do
    @adminmatrixplantpart = adminmatrixplantparts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminmatrixplantparts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminmatrixplantpart" do
    assert_difference('Adminmatrixplantpart.count') do
      post :create, adminmatrixplantpart: { plant_part: @adminmatrixplantpart.plant_part }
    end

    assert_redirected_to adminmatrixplantpart_path(assigns(:adminmatrixplantpart))
  end

  test "should show adminmatrixplantpart" do
    get :show, id: @adminmatrixplantpart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminmatrixplantpart
    assert_response :success
  end

  test "should update adminmatrixplantpart" do
    patch :update, id: @adminmatrixplantpart, adminmatrixplantpart: { plant_part: @adminmatrixplantpart.plant_part }
    assert_redirected_to adminmatrixplantpart_path(assigns(:adminmatrixplantpart))
  end

  test "should destroy adminmatrixplantpart" do
    assert_difference('Adminmatrixplantpart.count', -1) do
      delete :destroy, id: @adminmatrixplantpart
    end

    assert_redirected_to adminmatrixplantparts_path
  end
end
