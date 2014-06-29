require 'test_helper'

class ContaminationstatusesControllerTest < ActionController::TestCase
  setup do
    @contaminationstatus = contaminationstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contaminationstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contaminationstatus" do
    assert_difference('Contaminationstatus.count') do
      post :create, contaminationstatus: { agent_id: @contaminationstatus.agent_id, cfu_natural_contamination: @contaminationstatus.cfu_natural_contamination, cfu_natural_contamination_unit: @contaminationstatus.cfu_natural_contamination_unit, detection_id: @contaminationstatus.detection_id, matrix_id: @contaminationstatus.matrix_id, reference_id: @contaminationstatus.reference_id, samplepreparation_id: @contaminationstatus.samplepreparation_id, spiking_id: @contaminationstatus.spiking_id, tenacity_id: @contaminationstatus.tenacity_id, treatment_id: @contaminationstatus.treatment_id, user_id: @contaminationstatus.user_id }
    end

    assert_redirected_to contaminationstatus_path(assigns(:contaminationstatus))
  end

  test "should show contaminationstatus" do
    get :show, id: @contaminationstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contaminationstatus
    assert_response :success
  end

  test "should update contaminationstatus" do
    patch :update, id: @contaminationstatus, contaminationstatus: { agent_id: @contaminationstatus.agent_id, cfu_natural_contamination: @contaminationstatus.cfu_natural_contamination, cfu_natural_contamination_unit: @contaminationstatus.cfu_natural_contamination_unit, detection_id: @contaminationstatus.detection_id, matrix_id: @contaminationstatus.matrix_id, reference_id: @contaminationstatus.reference_id, samplepreparation_id: @contaminationstatus.samplepreparation_id, spiking_id: @contaminationstatus.spiking_id, tenacity_id: @contaminationstatus.tenacity_id, treatment_id: @contaminationstatus.treatment_id, user_id: @contaminationstatus.user_id }
    assert_redirected_to contaminationstatus_path(assigns(:contaminationstatus))
  end

  test "should destroy contaminationstatus" do
    assert_difference('Contaminationstatus.count', -1) do
      delete :destroy, id: @contaminationstatus
    end

    assert_redirected_to contaminationstatuses_path
  end
end
