require 'test_helper'

class AgentsControllerTest < ActionController::TestCase
  setup do
    @agent = agents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agent" do
    assert_difference('Agent.count') do
      post :create, agent: { a_comment: @agent.a_comment, a_common_name: @agent.a_common_name, a_family: @agent.a_family, a_genus: @agent.a_genus, a_species: @agent.a_species, isolation_source: @agent.isolation_source, morbidity: @agent.morbidity, mortality: @agent.mortality, natural_occurence: @agent.natural_occurence, other_agent_name: @agent.other_agent_name, rate_of_illness: @agent.rate_of_illness, ref_number: @agent.ref_number, reference_id: @agent.reference_id, serovar: @agent.serovar, subspecies: @agent.subspecies, user_id: @agent.user_id }
    end

    assert_redirected_to agent_path(assigns(:agent))
  end

  test "should show agent" do
    get :show, id: @agent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agent
    assert_response :success
  end

  test "should update agent" do
    patch :update, id: @agent, agent: { a_comment: @agent.a_comment, a_common_name: @agent.a_common_name, a_family: @agent.a_family, a_genus: @agent.a_genus, a_species: @agent.a_species, isolation_source: @agent.isolation_source, morbidity: @agent.morbidity, mortality: @agent.mortality, natural_occurence: @agent.natural_occurence, other_agent_name: @agent.other_agent_name, rate_of_illness: @agent.rate_of_illness, ref_number: @agent.ref_number, reference_id: @agent.reference_id, serovar: @agent.serovar, subspecies: @agent.subspecies, user_id: @agent.user_id }
    assert_redirected_to agent_path(assigns(:agent))
  end

  test "should destroy agent" do
    assert_difference('Agent.count', -1) do
      delete :destroy, id: @agent
    end

    assert_redirected_to agents_path
  end
end
