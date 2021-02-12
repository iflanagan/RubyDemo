require "test_helper"

class RollbarRubyDemoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rollbar_ruby_demo_index_url
    assert_response :success
  end
end
