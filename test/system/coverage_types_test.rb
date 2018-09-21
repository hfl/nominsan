require "application_system_test_case"

class CoverageTypesTest < ApplicationSystemTestCase
  setup do
    @coverage_type = coverage_types(:one)
  end

  test "visiting the index" do
    visit coverage_types_url
    assert_selector "h1", text: "Coverage Types"
  end

  test "creating a Coverage type" do
    visit coverage_types_url
    click_on "New Coverage Type"

    fill_in "About", with: @coverage_type.about
    fill_in "Code", with: @coverage_type.code
    fill_in "Name", with: @coverage_type.name
    click_on "Create Coverage type"

    assert_text "Coverage type was successfully created"
    click_on "Back"
  end

  test "updating a Coverage type" do
    visit coverage_types_url
    click_on "Edit", match: :first

    fill_in "About", with: @coverage_type.about
    fill_in "Code", with: @coverage_type.code
    fill_in "Name", with: @coverage_type.name
    click_on "Update Coverage type"

    assert_text "Coverage type was successfully updated"
    click_on "Back"
  end

  test "destroying a Coverage type" do
    visit coverage_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coverage type was successfully destroyed"
  end
end
