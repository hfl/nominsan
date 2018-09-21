require "application_system_test_case"

class FormatMimesTest < ApplicationSystemTestCase
  setup do
    @format_mime = format_mimes(:one)
  end

  test "visiting the index" do
    visit format_mimes_url
    assert_selector "h1", text: "Format Mimes"
  end

  test "creating a Format mime" do
    visit format_mimes_url
    click_on "New Format Mime"

    fill_in "About", with: @format_mime.about
    fill_in "Code", with: @format_mime.code
    fill_in "Name", with: @format_mime.name
    click_on "Create Format mime"

    assert_text "Format mime was successfully created"
    click_on "Back"
  end

  test "updating a Format mime" do
    visit format_mimes_url
    click_on "Edit", match: :first

    fill_in "About", with: @format_mime.about
    fill_in "Code", with: @format_mime.code
    fill_in "Name", with: @format_mime.name
    click_on "Update Format mime"

    assert_text "Format mime was successfully updated"
    click_on "Back"
  end

  test "destroying a Format mime" do
    visit format_mimes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Format mime was successfully destroyed"
  end
end
