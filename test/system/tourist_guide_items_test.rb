require "application_system_test_case"

class TouristGuideItemsTest < ApplicationSystemTestCase
  setup do
    @tourist_guide_item = tourist_guide_items(:one)
  end

  test "visiting the index" do
    visit tourist_guide_items_url
    assert_selector "h1", text: "Tourist guide items"
  end

  test "should create tourist guide item" do
    visit tourist_guide_items_url
    click_on "New tourist guide item"

    fill_in "Description", with: @tourist_guide_item.description
    fill_in "Latitude", with: @tourist_guide_item.latitude
    fill_in "Longitude", with: @tourist_guide_item.longitude
    fill_in "Title", with: @tourist_guide_item.title
    fill_in "User", with: @tourist_guide_item.user_id
    click_on "Create Tourist guide item"

    assert_text "Tourist guide item was successfully created"
    click_on "Back"
  end

  test "should update Tourist guide item" do
    visit tourist_guide_item_url(@tourist_guide_item)
    click_on "Edit this tourist guide item", match: :first

    fill_in "Description", with: @tourist_guide_item.description
    fill_in "Latitude", with: @tourist_guide_item.latitude
    fill_in "Longitude", with: @tourist_guide_item.longitude
    fill_in "Title", with: @tourist_guide_item.title
    fill_in "User", with: @tourist_guide_item.user_id
    click_on "Update Tourist guide item"

    assert_text "Tourist guide item was successfully updated"
    click_on "Back"
  end

  test "should destroy Tourist guide item" do
    visit tourist_guide_item_url(@tourist_guide_item)
    click_on "Destroy this tourist guide item", match: :first

    assert_text "Tourist guide item was successfully destroyed"
  end
end
