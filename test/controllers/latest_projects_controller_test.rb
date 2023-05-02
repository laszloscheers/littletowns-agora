require "test_helper"

class LatestProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get latest_projects_index_url
    assert_response :success
  end
end
