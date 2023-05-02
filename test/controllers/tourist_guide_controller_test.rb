require "test_helper"

class TouristGuideControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tourist_guide_index_url
    assert_response :success
  end
end
