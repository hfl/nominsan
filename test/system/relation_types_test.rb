require "application_system_test_case"

class RelationTypesTest < ApplicationSystemTestCase
  setup do
    @relation_type = relation_types(:one)
  end

  test "visiting the index" do
    visit relation_types_url
    assert_selector "h1", text: "Relation Types"
  end

  test "creating a Relation type" do
    visit relation_types_url
    click_on "New Relation Type"

    fill_in "About", with: @relation_type.about
    fill_in "Code", with: @relation_type.code
    fill_in "Name", with: @relation_type.name
    click_on "Create Relation type"

    assert_text "Relation type was successfully created"
    click_on "Back"
  end

  test "updating a Relation type" do
    visit relation_types_url
    click_on "Edit", match: :first

    fill_in "About", with: @relation_type.about
    fill_in "Code", with: @relation_type.code
    fill_in "Name", with: @relation_type.name
    click_on "Update Relation type"

    assert_text "Relation type was successfully updated"
    click_on "Back"
  end

  test "destroying a Relation type" do
    visit relation_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Relation type was successfully destroyed"
  end
end
