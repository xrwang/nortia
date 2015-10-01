require 'test_helper'

class VibesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get test" do
    get :test
    assert_response :success
  end

end
