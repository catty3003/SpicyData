require 'test_helper'

class AgentparamsControllerTest < ActionController::TestCase
  setup do
    @agentparam = agentparams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agentparams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agentparam" do
    assert_difference('Agentparam.count') do
      post :create, agentparam: { agent_id: @agentparam.agent_id, infected_species: @agentparam.infected_species, infectious_dose: @agentparam.infectious_dose, level_of_infectious_dose: @agentparam.level_of_infectious_dose }
    end

    assert_redirected_to agentparam_path(assigns(:agentparam))
  end

  test "should show agentparam" do
    get :show, id: @agentparam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agentparam
    assert_response :success
  end

  test "should update agentparam" do
    patch :update, id: @agentparam, agentparam: { agent_id: @agentparam.agent_id, infected_species: @agentparam.infected_species, infectious_dose: @agentparam.infectious_dose, level_of_infectious_dose: @agentparam.level_of_infectious_dose }
    assert_redirected_to agentparam_path(assigns(:agentparam))
  end

  test "should destroy agentparam" do
    assert_difference('Agentparam.count', -1) do
      delete :destroy, id: @agentparam
    end

    assert_redirected_to agentparams_path
  end
end
