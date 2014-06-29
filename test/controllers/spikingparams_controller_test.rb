require 'test_helper'

class SpikingparamsControllerTest < ActionController::TestCase
  setup do
    @spikingparam = spikingparams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spikingparams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spikingparam" do
    assert_difference('Spikingparam.count') do
      post :create, spikingparam: { carrier_fluid: @spikingparam.carrier_fluid, carrier_substance: @spikingparam.carrier_substance, cfu_of_inoculum_per_ml: @spikingparam.cfu_of_inoculum_per_ml, cfu_per_gram_spice_spiked: @spikingparam.cfu_per_gram_spice_spiked, spik_comment: @spikingparam.spik_comment, spik_duration: @spikingparam.spik_duration, spik_duration_unit: @spikingparam.spik_duration_unit, spik_weight_of_sample: @spikingparam.spik_weight_of_sample, spik_weight_of_sample_unit: @spikingparam.spik_weight_of_sample_unit }
    end

    assert_redirected_to spikingparam_path(assigns(:spikingparam))
  end

  test "should show spikingparam" do
    get :show, id: @spikingparam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spikingparam
    assert_response :success
  end

  test "should update spikingparam" do
    patch :update, id: @spikingparam, spikingparam: { carrier_fluid: @spikingparam.carrier_fluid, carrier_substance: @spikingparam.carrier_substance, cfu_of_inoculum_per_ml: @spikingparam.cfu_of_inoculum_per_ml, cfu_per_gram_spice_spiked: @spikingparam.cfu_per_gram_spice_spiked, spik_comment: @spikingparam.spik_comment, spik_duration: @spikingparam.spik_duration, spik_duration_unit: @spikingparam.spik_duration_unit, spik_weight_of_sample: @spikingparam.spik_weight_of_sample, spik_weight_of_sample_unit: @spikingparam.spik_weight_of_sample_unit }
    assert_redirected_to spikingparam_path(assigns(:spikingparam))
  end

  test "should destroy spikingparam" do
    assert_difference('Spikingparam.count', -1) do
      delete :destroy, id: @spikingparam
    end

    assert_redirected_to spikingparams_path
  end
end
