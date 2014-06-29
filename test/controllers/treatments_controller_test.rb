require 'test_helper'

class TreatmentsControllerTest < ActionController::TestCase
  setup do
    @treatment = treatments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:treatments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create treatment" do
    assert_difference('Treatment.count') do
      post :create, treatment: { fumigation_gas: @treatment.fumigation_gas, fumigation_gas_in_percent: @treatment.fumigation_gas_in_percent, kgy_dose: @treatment.kgy_dose, matrix_id: @treatment.matrix_id, mechanical: @treatment.mechanical, optical: @treatment.optical, other_condition: @treatment.other_condition, pressure: @treatment.pressure, process_type: @treatment.process_type, reference_id: @treatment.reference_id, steam: @treatment.steam, steam_in_percent: @treatment.steam_in_percent, t_aw: @treatment.t_aw, t_comment: @treatment.t_comment, t_ph: @treatment.t_ph, temperature: @treatment.temperature, temperature_in_degree: @treatment.temperature_in_degree, treat_duration: @treatment.treat_duration, treat_duration_unit: @treatment.treat_duration_unit, user_id: @treatment.user_id, water_activity: @treatment.water_activity }
    end

    assert_redirected_to treatment_path(assigns(:treatment))
  end

  test "should show treatment" do
    get :show, id: @treatment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @treatment
    assert_response :success
  end

  test "should update treatment" do
    patch :update, id: @treatment, treatment: { fumigation_gas: @treatment.fumigation_gas, fumigation_gas_in_percent: @treatment.fumigation_gas_in_percent, kgy_dose: @treatment.kgy_dose, matrix_id: @treatment.matrix_id, mechanical: @treatment.mechanical, optical: @treatment.optical, other_condition: @treatment.other_condition, pressure: @treatment.pressure, process_type: @treatment.process_type, reference_id: @treatment.reference_id, steam: @treatment.steam, steam_in_percent: @treatment.steam_in_percent, t_aw: @treatment.t_aw, t_comment: @treatment.t_comment, t_ph: @treatment.t_ph, temperature: @treatment.temperature, temperature_in_degree: @treatment.temperature_in_degree, treat_duration: @treatment.treat_duration, treat_duration_unit: @treatment.treat_duration_unit, user_id: @treatment.user_id, water_activity: @treatment.water_activity }
    assert_redirected_to treatment_path(assigns(:treatment))
  end

  test "should destroy treatment" do
    assert_difference('Treatment.count', -1) do
      delete :destroy, id: @treatment
    end

    assert_redirected_to treatments_path
  end
end
