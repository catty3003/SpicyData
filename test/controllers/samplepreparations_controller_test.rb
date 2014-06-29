require 'test_helper'

class SamplepreparationsControllerTest < ActionController::TestCase
  setup do
    @samplepreparation = samplepreparations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:samplepreparations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create samplepreparation" do
    assert_difference('Samplepreparation.count') do
      post :create, samplepreparation: { applied_kit: @samplepreparation.applied_kit, cell_lysis: @samplepreparation.cell_lysis, dilution_fuid: @samplepreparation.dilution_fuid, dna_extraction: @samplepreparation.dna_extraction, enrichment: @samplepreparation.enrichment, first_dilution_ratio: @samplepreparation.first_dilution_ratio, homogenize_with: @samplepreparation.homogenize_with, homogenizing_method: @samplepreparation.homogenizing_method, other_samprep_method_type: @samplepreparation.other_samprep_method_type, protein_extraction: @samplepreparation.protein_extraction, reference_id: @samplepreparation.reference_id, rna_extraction: @samplepreparation.rna_extraction, samprep_comment: @samplepreparation.samprep_comment, samprep_duration: @samplepreparation.samprep_duration, samprep_duration_unit: @samplepreparation.samprep_duration_unit, samprep_long_name: @samplepreparation.samprep_long_name, samprep_method_type_details_text: @samplepreparation.samprep_method_type_details_text, samprep_method_validated_for_condiments: @samplepreparation.samprep_method_validated_for_condiments, samprep_process_description: @samplepreparation.samprep_process_description, samprep_short_name: @samplepreparation.samprep_short_name, spik_weight_of_sample: @samplepreparation.spik_weight_of_sample, spik_weight_of_sample_unit: @samplepreparation.spik_weight_of_sample_unit, user_id: @samplepreparation.user_id }
    end

    assert_redirected_to samplepreparation_path(assigns(:samplepreparation))
  end

  test "should show samplepreparation" do
    get :show, id: @samplepreparation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @samplepreparation
    assert_response :success
  end

  test "should update samplepreparation" do
    patch :update, id: @samplepreparation, samplepreparation: { applied_kit: @samplepreparation.applied_kit, cell_lysis: @samplepreparation.cell_lysis, dilution_fuid: @samplepreparation.dilution_fuid, dna_extraction: @samplepreparation.dna_extraction, enrichment: @samplepreparation.enrichment, first_dilution_ratio: @samplepreparation.first_dilution_ratio, homogenize_with: @samplepreparation.homogenize_with, homogenizing_method: @samplepreparation.homogenizing_method, other_samprep_method_type: @samplepreparation.other_samprep_method_type, protein_extraction: @samplepreparation.protein_extraction, reference_id: @samplepreparation.reference_id, rna_extraction: @samplepreparation.rna_extraction, samprep_comment: @samplepreparation.samprep_comment, samprep_duration: @samplepreparation.samprep_duration, samprep_duration_unit: @samplepreparation.samprep_duration_unit, samprep_long_name: @samplepreparation.samprep_long_name, samprep_method_type_details_text: @samplepreparation.samprep_method_type_details_text, samprep_method_validated_for_condiments: @samplepreparation.samprep_method_validated_for_condiments, samprep_process_description: @samplepreparation.samprep_process_description, samprep_short_name: @samplepreparation.samprep_short_name, spik_weight_of_sample: @samplepreparation.spik_weight_of_sample, spik_weight_of_sample_unit: @samplepreparation.spik_weight_of_sample_unit, user_id: @samplepreparation.user_id }
    assert_redirected_to samplepreparation_path(assigns(:samplepreparation))
  end

  test "should destroy samplepreparation" do
    assert_difference('Samplepreparation.count', -1) do
      delete :destroy, id: @samplepreparation
    end

    assert_redirected_to samplepreparations_path
  end
end
