require 'test_helper'

class TenacityparamsControllerTest < ActionController::TestCase
  setup do
    @tenacityparam = tenacityparams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tenacityparams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tenacityparam" do
    assert_difference('Tenacityparam.count') do
      post :create, tenacityparam: { decimal_reduction: @tenacityparam.decimal_reduction, f_concentration_unit: @tenacityparam.f_concentration_unit, final_concentration: @tenacityparam.final_concentration, tena_comment: @tenacityparam.tena_comment, tena_duration: @tenacityparam.tena_duration, tena_duration_unit: @tenacityparam.tena_duration_unit, tenacity_id: @tenacityparam.tenacity_id }
    end

    assert_redirected_to tenacityparam_path(assigns(:tenacityparam))
  end

  test "should show tenacityparam" do
    get :show, id: @tenacityparam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tenacityparam
    assert_response :success
  end

  test "should update tenacityparam" do
    patch :update, id: @tenacityparam, tenacityparam: { decimal_reduction: @tenacityparam.decimal_reduction, f_concentration_unit: @tenacityparam.f_concentration_unit, final_concentration: @tenacityparam.final_concentration, tena_comment: @tenacityparam.tena_comment, tena_duration: @tenacityparam.tena_duration, tena_duration_unit: @tenacityparam.tena_duration_unit, tenacity_id: @tenacityparam.tenacity_id }
    assert_redirected_to tenacityparam_path(assigns(:tenacityparam))
  end

  test "should destroy tenacityparam" do
    assert_difference('Tenacityparam.count', -1) do
      delete :destroy, id: @tenacityparam
    end

    assert_redirected_to tenacityparams_path
  end
end
