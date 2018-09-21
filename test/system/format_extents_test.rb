require "application_system_test_case"

class FormatExtentsTest < ApplicationSystemTestCase
  setup do
    @format_extent = format_extents(:one)
  end

  test "visiting the index" do
    visit format_extents_url
    assert_selector "h1", text: "Format Extents"
  end

  test "creating a Format extent" do
    visit format_extents_url
    click_on "New Format Extent"

    fill_in "About", with: @format_extent.about
    fill_in "Code", with: @format_extent.code
    fill_in "Name", with: @format_extent.name
    click_on "Create Format extent"

    assert_text "Format extent was successfully created"
    click_on "Back"
  end

  test "updating a Format extent" do
    visit format_extents_url
    click_on "Edit", match: :first

    fill_in "About", with: @format_extent.about
    fill_in "Code", with: @format_extent.code
    fill_in "Name", with: @format_extent.name
    click_on "Update Format extent"

    assert_text "Format extent was successfully updated"
    click_on "Back"
  end

  test "destroying a Format extent" do
    visit format_extents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Format extent was successfully destroyed"
  end
end
