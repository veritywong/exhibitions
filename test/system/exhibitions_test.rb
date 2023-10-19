require "application_system_test_case"

class ExhibitionsTest < ApplicationSystemTestCase
  setup do
    @exhibition = exhibitions(:one)
  end

  test "visiting the index" do
    visit exhibitions_url
    assert_selector "h1", text: "Exhibitions"
  end

  test "should create exhibition" do
    visit exhibitions_url
    click_on "New exhibition"

    fill_in "End date", with: @exhibition.end_date
    fill_in "Image", with: @exhibition.image
    fill_in "Location", with: @exhibition.location
    fill_in "Start date", with: @exhibition.start_date
    fill_in "Title", with: @exhibition.title
    fill_in "Url", with: @exhibition.url
    click_on "Create Exhibition"

    assert_text "Exhibition was successfully created"
    click_on "Back"
  end

  test "should update Exhibition" do
    visit exhibition_url(@exhibition)
    click_on "Edit this exhibition", match: :first

    fill_in "End date", with: @exhibition.end_date
    fill_in "Image", with: @exhibition.image
    fill_in "Location", with: @exhibition.location
    fill_in "Start date", with: @exhibition.start_date
    fill_in "Title", with: @exhibition.title
    fill_in "Url", with: @exhibition.url
    click_on "Update Exhibition"

    assert_text "Exhibition was successfully updated"
    click_on "Back"
  end

  test "should destroy Exhibition" do
    visit exhibition_url(@exhibition)
    click_on "Destroy this exhibition", match: :first

    assert_text "Exhibition was successfully destroyed"
  end
end
