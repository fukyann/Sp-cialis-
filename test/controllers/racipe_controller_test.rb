require 'test_helper'

class RacipeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get racipe_new_url
    assert_response :success
  end

end
