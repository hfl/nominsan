require "application_system_test_case"

class MarcsTest < ApplicationSystemTestCase
  setup do
    @marc = marcs(:one)
  end

  test "visiting the index" do
    visit marcs_url
    assert_selector "h1", text: "Marcs"
  end

  test "creating a Marc" do
    visit marcs_url
    click_on "New Marc"

    fill_in "Literature", with: @marc.literature_id
    fill_in "Marc", with: @marc.marc
    fill_in "Marc Type", with: @marc.marc_type_id
    click_on "Create Marc"

    assert_text "Marc was successfully created"
    click_on "Back"
  end

  test "updating a Marc" do
    visit marcs_url
    click_on "Edit", match: :first

    fill_in "Literature", with: @marc.literature_id
    fill_in "Marc", with: @marc.marc
    fill_in "Marc Type", with: @marc.marc_type_id
    click_on "Update Marc"

    assert_text "Marc was successfully updated"
    click_on "Back"
  end

  test "destroying a Marc" do
    visit marcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marc was successfully destroyed"
  end
end
