require 'test_helper'

class TenacityrerultsControllerTest < ActionController::TestCase
  setup do
    @tenacityrerult = tenacityrerults(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tenacityrerults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tenacityrerult" do
    assert_difference('Tenacityrerult.count') do
      post :create, tenacityrerult: { decimal_reduction: @tenacityrerult.decimal_reduction, f_concentration_unit: @tenacityrerult.f_concentration_unit, final_concentration: @tenacityrerult.final_concentration, tena_comment: @tenacityrerult.tena_comment, tena_duration: @tenacityrerult.tena_duration, tena_duration_unit: @tenacityrerult.tena_duration_unit, tenacity_id: @tenacityrerult.tenacity_id }
    end

    assert_redirected_to tenacityrerult_path(assigns(:tenacityrerult))
  end

  test "should show tenacityrerult" do
    get :show, id: @tenacityrerult
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tenacityrerult
    assert_response :success
  end

  test "should update tenacityrerult" do
    patch :update, id: @tenacityrerult, tenacityrerult: { decimal_reduction: @tenacityrerult.decimal_reduction, f_concentration_unit: @tenacityrerult.f_concentration_unit, final_concentration: @tenacityrerult.final_concentration, tena_comment: @tenacityrerult.tena_comment, tena_duration: @tenacityrerult.tena_duration, tena_duration_unit: @tenacityrerult.tena_duration_unit, tenacity_id: @tenacityrerult.tenacity_id }
    assert_redirected_to tenacityrerult_path(assigns(:tenacityrerult))
  end

  test "should destroy tenacityrerult" do
    assert_difference('Tenacityrerult.count', -1) do
      delete :destroy, id: @tenacityrerult
    end

    assert_redirected_to tenacityrerults_path
  end
end
