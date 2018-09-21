require "application_system_test_case"

class RightTypesTest < ApplicationSystemTestCase
  setup do
    @right_type = right_types(:one)
  end

  test "visiting the index" do
    visit right_types_url
    assert_selector "h1", text: "Right Types"
  end

  test "creating a Right type" do
    visit right_types_url
    click_on "New Right Type"

    fill_in "About", with: @right_type.about
    fill_in "Code", with: @right_type.code
    fill_in "Name", with: @right_type.name
    click_on "Create Right type"

    assert_text "Right type was successfully created"
    click_on "Back"
  end

  test "updating a Right type" do
    visit right_types_url
    click_on "Edit", match: :first

    fill_in "About", with: @right_type.about
    fill_in "Code", with: @right_type.code
    fill_in "Name", with: @right_type.name
    click_on "Update Right type"

    assert_text "Right type was successfully updated"
    click_on "Back"
  end

  test "destroying a Right type" do
    visit right_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Right type was successfully destroyed"
  end
end
