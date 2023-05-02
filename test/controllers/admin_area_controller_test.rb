require "test_helper"

class AdminAreaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_area_index_url
    assert_response :success
  end
end
