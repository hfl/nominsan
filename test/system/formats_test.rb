require "application_system_test_case"

class FormatsTest < ApplicationSystemTestCase
  setup do
    @format = formats(:one)
  end

  test "visiting the index" do
    visit formats_url
    assert_selector "h1", text: "Formats"
  end

  test "creating a Format" do
    visit formats_url
    click_on "New Format"

    fill_in "Format Extent", with: @format.format_extent_id
    fill_in "Format Mime", with: @format.format_mime_id
    fill_in "Literature", with: @format.literature_id
    fill_in "Scan Resolution", with: @format.scan_resolution
    click_on "Create Format"

    assert_text "Format was successfully created"
    click_on "Back"
  end

  test "updating a Format" do
    visit formats_url
    click_on "Edit", match: :first

    fill_in "Format Extent", with: @format.format_extent_id
    fill_in "Format Mime", with: @format.format_mime_id
    fill_in "Literature", with: @format.literature_id
    fill_in "Scan Resolution", with: @format.scan_resolution
    click_on "Update Format"

    assert_text "Format was successfully updated"
    click_on "Back"
  end

  test "destroying a Format" do
    visit formats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Format was successfully destroyed"
  end
end
