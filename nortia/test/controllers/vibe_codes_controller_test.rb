require 'test_helper'

class VibeCodesControllerTest < ActionController::TestCase
  test "should get test" do
    get :test
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
