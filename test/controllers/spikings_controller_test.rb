require 'test_helper'

class SpikingsControllerTest < ActionController::TestCase
  setup do
    @spiking = spikings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spikings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spiking" do
    assert_difference('Spiking.count') do
      post :create, spiking: { cons: @spiking.cons, pros: @spiking.pros, reference_id: @spiking.reference_id, spik_device_needed: @spiking.spik_device_needed, spik_long_name: @spiking.spik_long_name, spik_process_description: @spiking.spik_process_description, spik_short_name: @spiking.spik_short_name, user_id: @spiking.user_id }
    end

    assert_redirected_to spiking_path(assigns(:spiking))
  end

  test "should show spiking" do
    get :show, id: @spiking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spiking
    assert_response :success
  end

  test "should update spiking" do
    patch :update, id: @spiking, spiking: { cons: @spiking.cons, pros: @spiking.pros, reference_id: @spiking.reference_id, spik_device_needed: @spiking.spik_device_needed, spik_long_name: @spiking.spik_long_name, spik_process_description: @spiking.spik_process_description, spik_short_name: @spiking.spik_short_name, user_id: @spiking.user_id }
    assert_redirected_to spiking_path(assigns(:spiking))
  end

  test "should destroy spiking" do
    assert_difference('Spiking.count', -1) do
      delete :destroy, id: @spiking
    end

    assert_redirected_to spikings_path
  end
end
