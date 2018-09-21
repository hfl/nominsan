require "application_system_test_case"

class DescriptionTypesTest < ApplicationSystemTestCase
  setup do
    @description_type = description_types(:one)
  end

  test "visiting the index" do
    visit description_types_url
    assert_selector "h1", text: "Description Types"
  end

  test "creating a Description type" do
    visit description_types_url
    click_on "New Description Type"

    fill_in "About", with: @description_type.about
    fill_in "Code", with: @description_type.code
    fill_in "Name", with: @description_type.name
    click_on "Create Description type"

    assert_text "Description type was successfully created"
    click_on "Back"
  end

  test "updating a Description type" do
    visit description_types_url
    click_on "Edit", match: :first

    fill_in "About", with: @description_type.about
    fill_in "Code", with: @description_type.code
    fill_in "Name", with: @description_type.name
    click_on "Update Description type"

    assert_text "Description type was successfully updated"
    click_on "Back"
  end

  test "destroying a Description type" do
    visit description_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Description type was successfully destroyed"
  end
end
