require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get insertdata" do
    get :insertdata
    assert_response :success
  end

  test "should get showdata" do
    get :showdata
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
