require 'test_helper'

class ReferencetypesControllerTest < ActionController::TestCase
  setup do
    @referencetype = referencetypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referencetypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referencetype" do
    assert_difference('Referencetype.count') do
      post :create, referencetype: { type_of_literatur: @referencetype.type_of_literatur }
    end

    assert_redirected_to referencetype_path(assigns(:referencetype))
  end

  test "should show referencetype" do
    get :show, id: @referencetype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referencetype
    assert_response :success
  end

  test "should update referencetype" do
    patch :update, id: @referencetype, referencetype: { type_of_literatur: @referencetype.type_of_literatur }
    assert_redirected_to referencetype_path(assigns(:referencetype))
  end

  test "should destroy referencetype" do
    assert_difference('Referencetype.count', -1) do
      delete :destroy, id: @referencetype
    end

    assert_redirected_to referencetypes_path
  end
end
