require 'test_helper'

class DetectionsControllerTest < ActionController::TestCase
  setup do
    @detection = detections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detection" do
    assert_difference('Detection.count') do
      post :create, detection: { d_comment: @detection.d_comment, d_device_needed: @detection.d_device_needed, d_long_name: @detection.d_long_name, d_method_validated_for_condiments: @detection.d_method_validated_for_condiments, d_process_description: @detection.d_process_description, d_short_name: @detection.d_short_name, d_weight_of_sample: @detection.d_weight_of_sample, d_weight_of_sample_unit: @detection.d_weight_of_sample_unit, detection_method_dilution: @detection.detection_method_dilution, detection_method_type: @detection.detection_method_type, duration_until_result: @detection.duration_until_result, duration_until_result_unit: @detection.duration_until_result_unit, interpretation: @detection.interpretation, lod: @detection.lod, method_for_comparison: @detection.method_for_comparison, other_characteristic: @detection.other_characteristic, reference_id: @detection.reference_id, reliability_score: @detection.reliability_score, sensitivity: @detection.sensitivity, specifity: @detection.specifity, target_gen: @detection.target_gen, target_protein: @detection.target_protein, technique: @detection.technique, user_id: @detection.user_id, verification: @detection.verification }
    end

    assert_redirected_to detection_path(assigns(:detection))
  end

  test "should show detection" do
    get :show, id: @detection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detection
    assert_response :success
  end

  test "should update detection" do
    patch :update, id: @detection, detection: { d_comment: @detection.d_comment, d_device_needed: @detection.d_device_needed, d_long_name: @detection.d_long_name, d_method_validated_for_condiments: @detection.d_method_validated_for_condiments, d_process_description: @detection.d_process_description, d_short_name: @detection.d_short_name, d_weight_of_sample: @detection.d_weight_of_sample, d_weight_of_sample_unit: @detection.d_weight_of_sample_unit, detection_method_dilution: @detection.detection_method_dilution, detection_method_type: @detection.detection_method_type, duration_until_result: @detection.duration_until_result, duration_until_result_unit: @detection.duration_until_result_unit, interpretation: @detection.interpretation, lod: @detection.lod, method_for_comparison: @detection.method_for_comparison, other_characteristic: @detection.other_characteristic, reference_id: @detection.reference_id, reliability_score: @detection.reliability_score, sensitivity: @detection.sensitivity, specifity: @detection.specifity, target_gen: @detection.target_gen, target_protein: @detection.target_protein, technique: @detection.technique, user_id: @detection.user_id, verification: @detection.verification }
    assert_redirected_to detection_path(assigns(:detection))
  end

  test "should destroy detection" do
    assert_difference('Detection.count', -1) do
      delete :destroy, id: @detection
    end

    assert_redirected_to detections_path
  end
end
