require 'test_helper'

class MaterialControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get material_new_url
    assert_response :success
  end

end
