require "application_system_test_case"

class GuidesTest < ApplicationSystemTestCase
  setup do
    @guide = guides(:one)
  end

  test "visiting the index" do
    visit guides_url
    assert_selector "h1", text: "Guides"
  end

  test "creating a Guide" do
    visit guides_url
    click_on "New Guide"

    fill_in "Abstract", with: @guide.abstract
    fill_in "Backcover", with: @guide.backcover
    fill_in "Colophon", with: @guide.colophon
    fill_in "Content", with: @guide.content
    fill_in "Copyright", with: @guide.copyright
    fill_in "Cover", with: @guide.cover
    fill_in "Foreword", with: @guide.foreword
    fill_in "Index", with: @guide.index
    fill_in "Literature", with: @guide.literature_id
    fill_in "Loi", with: @guide.loi
    fill_in "Preface", with: @guide.preface
    fill_in "Reference", with: @guide.reference
    fill_in "Title", with: @guide.title
    fill_in "Toc", with: @guide.toc
    fill_in "Total Page", with: @guide.total_page
    click_on "Create Guide"

    assert_text "Guide was successfully created"
    click_on "Back"
  end

  test "updating a Guide" do
    visit guides_url
    click_on "Edit", match: :first

    fill_in "Abstract", with: @guide.abstract
    fill_in "Backcover", with: @guide.backcover
    fill_in "Colophon", with: @guide.colophon
    fill_in "Content", with: @guide.content
    fill_in "Copyright", with: @guide.copyright
    fill_in "Cover", with: @guide.cover
    fill_in "Foreword", with: @guide.foreword
    fill_in "Index", with: @guide.index
    fill_in "Literature", with: @guide.literature_id
    fill_in "Loi", with: @guide.loi
    fill_in "Preface", with: @guide.preface
    fill_in "Reference", with: @guide.reference
    fill_in "Title", with: @guide.title
    fill_in "Toc", with: @guide.toc
    fill_in "Total Page", with: @guide.total_page
    click_on "Update Guide"

    assert_text "Guide was successfully updated"
    click_on "Back"
  end

  test "destroying a Guide" do
    visit guides_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guide was successfully destroyed"
  end
end
