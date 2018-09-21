require "application_system_test_case"

class EditionsTest < ApplicationSystemTestCase
  setup do
    @edition = editions(:one)
  end

  test "visiting the index" do
    visit editions_url
    assert_selector "h1", text: "Editions"
  end

  test "creating a Edition" do
    visit editions_url
    click_on "New Edition"

    fill_in "Edition", with: @edition.edition
    fill_in "Edition Type", with: @edition.edition_type_id
    fill_in "Literature", with: @edition.literature_id
    click_on "Create Edition"

    assert_text "Edition was successfully created"
    click_on "Back"
  end

  test "updating a Edition" do
    visit editions_url
    click_on "Edit", match: :first

    fill_in "Edition", with: @edition.edition
    fill_in "Edition Type", with: @edition.edition_type_id
    fill_in "Literature", with: @edition.literature_id
    click_on "Update Edition"

    assert_text "Edition was successfully updated"
    click_on "Back"
  end

  test "destroying a Edition" do
    visit editions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Edition was successfully destroyed"
  end
end
