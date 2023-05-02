require "test_helper"

class AccommodationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accommodations_index_url
    assert_response :success
  end
end
