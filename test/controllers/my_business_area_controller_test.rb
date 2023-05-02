require "test_helper"

class MyBusinessAreaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_business_area_index_url
    assert_response :success
  end
end
