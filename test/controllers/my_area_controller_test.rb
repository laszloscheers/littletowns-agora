require "test_helper"

class MyAreaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_area_index_url
    assert_response :success
  end
end
