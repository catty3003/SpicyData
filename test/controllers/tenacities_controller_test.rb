require 'test_helper'

class TenacitiesControllerTest < ActionController::TestCase
  setup do
    @tenacity = tenacities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tenacities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tenacity" do
    assert_difference('Tenacity.count') do
      post :create, tenacity: { i_concentration_unit: @tenacity.i_concentration_unit, inoculum_concentration_initial: @tenacity.inoculum_concentration_initial, reference_id: @tenacity.reference_id, total_sample_number: @tenacity.total_sample_number, user_id: @tenacity.user_id }
    end

    assert_redirected_to tenacity_path(assigns(:tenacity))
  end

  test "should show tenacity" do
    get :show, id: @tenacity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tenacity
    assert_response :success
  end

  test "should update tenacity" do
    patch :update, id: @tenacity, tenacity: { i_concentration_unit: @tenacity.i_concentration_unit, inoculum_concentration_initial: @tenacity.inoculum_concentration_initial, reference_id: @tenacity.reference_id, total_sample_number: @tenacity.total_sample_number, user_id: @tenacity.user_id }
    assert_redirected_to tenacity_path(assigns(:tenacity))
  end

  test "should destroy tenacity" do
    assert_difference('Tenacity.count', -1) do
      delete :destroy, id: @tenacity
    end

    assert_redirected_to tenacities_path
  end
end
