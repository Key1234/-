require 'test_helper'

class RateControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get rate_show_url
    assert_response :success
  end

end
