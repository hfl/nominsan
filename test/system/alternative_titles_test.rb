require "application_system_test_case"

class AlternativeTitlesTest < ApplicationSystemTestCase
  setup do
    @alternative_title = alternative_titles(:one)
  end

  test "visiting the index" do
    visit alternative_titles_url
    assert_selector "h1", text: "Alternative Titles"
  end

  test "creating a Alternative title" do
    visit alternative_titles_url
    click_on "New Alternative Title"

    fill_in "Alternative Title", with: @alternative_title.alternative_title
    fill_in "Title", with: @alternative_title.title_id
    click_on "Create Alternative title"

    assert_text "Alternative title was successfully created"
    click_on "Back"
  end

  test "updating a Alternative title" do
    visit alternative_titles_url
    click_on "Edit", match: :first

    fill_in "Alternative Title", with: @alternative_title.alternative_title
    fill_in "Title", with: @alternative_title.title_id
    click_on "Update Alternative title"

    assert_text "Alternative title was successfully updated"
    click_on "Back"
  end

  test "destroying a Alternative title" do
    visit alternative_titles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alternative title was successfully destroyed"
  end
end
