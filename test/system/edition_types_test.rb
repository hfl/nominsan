require "application_system_test_case"

class EditionTypesTest < ApplicationSystemTestCase
  setup do
    @edition_type = edition_types(:one)
  end

  test "visiting the index" do
    visit edition_types_url
    assert_selector "h1", text: "Edition Types"
  end

  test "creating a Edition type" do
    visit edition_types_url
    click_on "New Edition Type"

    fill_in "About", with: @edition_type.about
    fill_in "Code", with: @edition_type.code
    fill_in "Name", with: @edition_type.name
    click_on "Create Edition type"

    assert_text "Edition type was successfully created"
    click_on "Back"
  end

  test "updating a Edition type" do
    visit edition_types_url
    click_on "Edit", match: :first

    fill_in "About", with: @edition_type.about
    fill_in "Code", with: @edition_type.code
    fill_in "Name", with: @edition_type.name
    click_on "Update Edition type"

    assert_text "Edition type was successfully updated"
    click_on "Back"
  end

  test "destroying a Edition type" do
    visit edition_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Edition type was successfully destroyed"
  end
end
