require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get main_top_url
    assert_response :success
  end

  test "should get output" do
    get main_output_url
    assert_response :success
  end

  test "should get help" do
    get main_help_url
    assert_response :success
  end

end
