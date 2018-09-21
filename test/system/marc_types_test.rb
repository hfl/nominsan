require "application_system_test_case"

class MarcTypesTest < ApplicationSystemTestCase
  setup do
    @marc_type = marc_types(:one)
  end

  test "visiting the index" do
    visit marc_types_url
    assert_selector "h1", text: "Marc Types"
  end

  test "creating a Marc type" do
    visit marc_types_url
    click_on "New Marc Type"

    fill_in "About", with: @marc_type.about
    fill_in "Code", with: @marc_type.code
    fill_in "Name", with: @marc_type.name
    click_on "Create Marc type"

    assert_text "Marc type was successfully created"
    click_on "Back"
  end

  test "updating a Marc type" do
    visit marc_types_url
    click_on "Edit", match: :first

    fill_in "About", with: @marc_type.about
    fill_in "Code", with: @marc_type.code
    fill_in "Name", with: @marc_type.name
    click_on "Update Marc type"

    assert_text "Marc type was successfully updated"
    click_on "Back"
  end

  test "destroying a Marc type" do
    visit marc_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marc type was successfully destroyed"
  end
end
