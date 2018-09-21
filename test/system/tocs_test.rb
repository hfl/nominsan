require "application_system_test_case"

class TocsTest < ApplicationSystemTestCase
  setup do
    @toc = tocs(:one)
  end

  test "visiting the index" do
    visit tocs_url
    assert_selector "h1", text: "Tocs"
  end

  test "creating a Toc" do
    visit tocs_url
    click_on "New Toc"

    fill_in "Chapter", with: @toc.chapter
    fill_in "Fiel Number", with: @toc.fiel_number
    fill_in "Literature", with: @toc.literature_id
    fill_in "Page", with: @toc.page
    fill_in "Parent", with: @toc.parent_id
    fill_in "Title", with: @toc.title
    click_on "Create Toc"

    assert_text "Toc was successfully created"
    click_on "Back"
  end

  test "updating a Toc" do
    visit tocs_url
    click_on "Edit", match: :first

    fill_in "Chapter", with: @toc.chapter
    fill_in "Fiel Number", with: @toc.fiel_number
    fill_in "Literature", with: @toc.literature_id
    fill_in "Page", with: @toc.page
    fill_in "Parent", with: @toc.parent_id
    fill_in "Title", with: @toc.title
    click_on "Update Toc"

    assert_text "Toc was successfully updated"
    click_on "Back"
  end

  test "destroying a Toc" do
    visit tocs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Toc was successfully destroyed"
  end
end
