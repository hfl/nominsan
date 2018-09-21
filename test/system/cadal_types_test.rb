require "application_system_test_case"

class CadalTypesTest < ApplicationSystemTestCase
  setup do
    @cadal_type = cadal_types(:one)
  end

  test "visiting the index" do
    visit cadal_types_url
    assert_selector "h1", text: "Cadal Types"
  end

  test "creating a Cadal type" do
    visit cadal_types_url
    click_on "New Cadal Type"

    fill_in "About", with: @cadal_type.about
    fill_in "Code", with: @cadal_type.code
    fill_in "Name", with: @cadal_type.name
    click_on "Create Cadal type"

    assert_text "Cadal type was successfully created"
    click_on "Back"
  end

  test "updating a Cadal type" do
    visit cadal_types_url
    click_on "Edit", match: :first

    fill_in "About", with: @cadal_type.about
    fill_in "Code", with: @cadal_type.code
    fill_in "Name", with: @cadal_type.name
    click_on "Update Cadal type"

    assert_text "Cadal type was successfully updated"
    click_on "Back"
  end

  test "destroying a Cadal type" do
    visit cadal_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cadal type was successfully destroyed"
  end
end
