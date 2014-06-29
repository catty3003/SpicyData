require 'test_helper'

class ReferencesControllerTest < ActionController::TestCase
  setup do
    @reference = references(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:references)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reference" do
    assert_difference('Reference.count') do
      post :create, reference: { agent: @reference.agent, detection: @reference.detection, first_author_name: @reference.first_author_name, journal: @reference.journal, link: @reference.link, matrix: @reference.matrix, page_from: @reference.page_from, page_to: @reference.page_to, r_comment: @reference.r_comment, sample_prep: @reference.sample_prep, spiking: @reference.spiking, tenacity: @reference.tenacity, title: @reference.title, treatment: @reference.treatment, type_of_literatur: @reference.type_of_literatur, user_id: @reference.user_id, volume: @reference.volume, year: @reference.year }
    end

    assert_redirected_to reference_path(assigns(:reference))
  end

  test "should show reference" do
    get :show, id: @reference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reference
    assert_response :success
  end

  test "should update reference" do
    patch :update, id: @reference, reference: { agent: @reference.agent, detection: @reference.detection, first_author_name: @reference.first_author_name, journal: @reference.journal, link: @reference.link, matrix: @reference.matrix, page_from: @reference.page_from, page_to: @reference.page_to, r_comment: @reference.r_comment, sample_prep: @reference.sample_prep, spiking: @reference.spiking, tenacity: @reference.tenacity, title: @reference.title, treatment: @reference.treatment, type_of_literatur: @reference.type_of_literatur, user_id: @reference.user_id, volume: @reference.volume, year: @reference.year }
    assert_redirected_to reference_path(assigns(:reference))
  end

  test "should destroy reference" do
    assert_difference('Reference.count', -1) do
      delete :destroy, id: @reference
    end

    assert_redirected_to references_path
  end
end
