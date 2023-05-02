require "test_helper"

class TouristGuideItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tourist_guide_item = tourist_guide_items(:one)
  end

  test "should get index" do
    get tourist_guide_items_url
    assert_response :success
  end

  test "should get new" do
    get new_tourist_guide_item_url
    assert_response :success
  end

  test "should create tourist_guide_item" do
    assert_difference("TouristGuideItem.count") do
      post tourist_guide_items_url, params: { tourist_guide_item: { description: @tourist_guide_item.description, latitude: @tourist_guide_item.latitude, longitude: @tourist_guide_item.longitude, title: @tourist_guide_item.title, user_id: @tourist_guide_item.user_id } }
    end

    assert_redirected_to tourist_guide_item_url(TouristGuideItem.last)
  end

  test "should show tourist_guide_item" do
    get tourist_guide_item_url(@tourist_guide_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_tourist_guide_item_url(@tourist_guide_item)
    assert_response :success
  end

  test "should update tourist_guide_item" do
    patch tourist_guide_item_url(@tourist_guide_item), params: { tourist_guide_item: { description: @tourist_guide_item.description, latitude: @tourist_guide_item.latitude, longitude: @tourist_guide_item.longitude, title: @tourist_guide_item.title, user_id: @tourist_guide_item.user_id } }
    assert_redirected_to tourist_guide_item_url(@tourist_guide_item)
  end

  test "should destroy tourist_guide_item" do
    assert_difference("TouristGuideItem.count", -1) do
      delete tourist_guide_item_url(@tourist_guide_item)
    end

    assert_redirected_to tourist_guide_items_url
  end
end
