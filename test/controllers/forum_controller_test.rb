require "test_helper"

class ForumControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get forum_index_url
    assert_response :success
  end

  test "should get show" do
    get forum_show_url
    assert_response :success
  end
end
