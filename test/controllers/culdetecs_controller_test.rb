require 'test_helper'

class CuldetecsControllerTest < ActionController::TestCase
  setup do
    @culdetec = culdetecs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:culdetecs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create culdetec" do
    assert_difference('Culdetec.count') do
      post :create, culdetec: { agar: @culdetec.agar, detection_id: @culdetec.detection_id, incubation_duration: @culdetec.incubation_duration, incubation_duration_unit: @culdetec.incubation_duration_unit, incubation_temp: @culdetec.incubation_temp, medium: @culdetec.medium, medium_volume_per_disc: @culdetec.medium_volume_per_disc, sample_volume_per_disc: @culdetec.sample_volume_per_disc }
    end

    assert_redirected_to culdetec_path(assigns(:culdetec))
  end

  test "should show culdetec" do
    get :show, id: @culdetec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @culdetec
    assert_response :success
  end

  test "should update culdetec" do
    patch :update, id: @culdetec, culdetec: { agar: @culdetec.agar, detection_id: @culdetec.detection_id, incubation_duration: @culdetec.incubation_duration, incubation_duration_unit: @culdetec.incubation_duration_unit, incubation_temp: @culdetec.incubation_temp, medium: @culdetec.medium, medium_volume_per_disc: @culdetec.medium_volume_per_disc, sample_volume_per_disc: @culdetec.sample_volume_per_disc }
    assert_redirected_to culdetec_path(assigns(:culdetec))
  end

  test "should destroy culdetec" do
    assert_difference('Culdetec.count', -1) do
      delete :destroy, id: @culdetec
    end

    assert_redirected_to culdetecs_path
  end
end
