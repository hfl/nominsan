require "application_system_test_case"

class DateXsesTest < ApplicationSystemTestCase
  setup do
    @date_xse = date_xses(:one)
  end

  test "visiting the index" do
    visit date_xses_url
    assert_selector "h1", text: "Date Xses"
  end

  test "creating a Date xsis" do
    visit date_xses_url
    click_on "New Date Xsis"

    fill_in "About", with: @date_xse.about
    fill_in "Code", with: @date_xse.code
    fill_in "Name", with: @date_xse.name
    fill_in "Ref", with: @date_xse.ref
    click_on "Create Date xsis"

    assert_text "Date xsis was successfully created"
    click_on "Back"
  end

  test "updating a Date xsis" do
    visit date_xses_url
    click_on "Edit", match: :first

    fill_in "About", with: @date_xse.about
    fill_in "Code", with: @date_xse.code
    fill_in "Name", with: @date_xse.name
    fill_in "Ref", with: @date_xse.ref
    click_on "Update Date xsis"

    assert_text "Date xsis was successfully updated"
    click_on "Back"
  end

  test "destroying a Date xsis" do
    visit date_xses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Date xsis was successfully destroyed"
  end
end
