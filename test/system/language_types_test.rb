require "application_system_test_case"

class LanguageTypesTest < ApplicationSystemTestCase
  setup do
    @language_type = language_types(:one)
  end

  test "visiting the index" do
    visit language_types_url
    assert_selector "h1", text: "Language Types"
  end

  test "creating a Language type" do
    visit language_types_url
    click_on "New Language Type"

    fill_in "About", with: @language_type.about
    fill_in "Code", with: @language_type.code
    fill_in "Name", with: @language_type.name
    click_on "Create Language type"

    assert_text "Language type was successfully created"
    click_on "Back"
  end

  test "updating a Language type" do
    visit language_types_url
    click_on "Edit", match: :first

    fill_in "About", with: @language_type.about
    fill_in "Code", with: @language_type.code
    fill_in "Name", with: @language_type.name
    click_on "Update Language type"

    assert_text "Language type was successfully updated"
    click_on "Back"
  end

  test "destroying a Language type" do
    visit language_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Language type was successfully destroyed"
  end
end
