require 'test_helper'

class AdminreferencetypesControllerTest < ActionController::TestCase
  setup do
    @adminreferencetype = adminreferencetypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminreferencetypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminreferencetype" do
    assert_difference('Adminreferencetype.count') do
      post :create, adminreferencetype: { type_of_literatur: @adminreferencetype.type_of_literatur }
    end

    assert_redirected_to adminreferencetype_path(assigns(:adminreferencetype))
  end

  test "should show adminreferencetype" do
    get :show, id: @adminreferencetype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminreferencetype
    assert_response :success
  end

  test "should update adminreferencetype" do
    patch :update, id: @adminreferencetype, adminreferencetype: { type_of_literatur: @adminreferencetype.type_of_literatur }
    assert_redirected_to adminreferencetype_path(assigns(:adminreferencetype))
  end

  test "should destroy adminreferencetype" do
    assert_difference('Adminreferencetype.count', -1) do
      delete :destroy, id: @adminreferencetype
    end

    assert_redirected_to adminreferencetypes_path
  end
end
