require "application_system_test_case"

class DateTypesTest < ApplicationSystemTestCase
  setup do
    @date_type = date_types(:one)
  end

  test "visiting the index" do
    visit date_types_url
    assert_selector "h1", text: "Date Types"
  end

  test "creating a Date type" do
    visit date_types_url
    click_on "New Date Type"

    fill_in "About", with: @date_type.about
    fill_in "Code", with: @date_type.code
    fill_in "Name", with: @date_type.name
    fill_in "Ref", with: @date_type.ref
    click_on "Create Date type"

    assert_text "Date type was successfully created"
    click_on "Back"
  end

  test "updating a Date type" do
    visit date_types_url
    click_on "Edit", match: :first

    fill_in "About", with: @date_type.about
    fill_in "Code", with: @date_type.code
    fill_in "Name", with: @date_type.name
    fill_in "Ref", with: @date_type.ref
    click_on "Update Date type"

    assert_text "Date type was successfully updated"
    click_on "Back"
  end

  test "destroying a Date type" do
    visit date_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Date type was successfully destroyed"
  end
end
