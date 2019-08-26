require "application_system_test_case"

class HeadlinecolortypesTest < ApplicationSystemTestCase
  setup do
    @headlinecolortype = headlinecolortypes(:one)
  end

  test "visiting the index" do
    visit headlinecolortypes_url
    assert_selector "h1", text: "Headlinecolortypes"
  end

  test "creating a Headlinecolortype" do
    visit headlinecolortypes_url
    click_on "New Headlinecolortype"

    fill_in "Name", with: @headlinecolortype.name
    click_on "Create Headlinecolortype"

    assert_text "Headlinecolortype was successfully created"
    click_on "Back"
  end

  test "updating a Headlinecolortype" do
    visit headlinecolortypes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @headlinecolortype.name
    click_on "Update Headlinecolortype"

    assert_text "Headlinecolortype was successfully updated"
    click_on "Back"
  end

  test "destroying a Headlinecolortype" do
    visit headlinecolortypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Headlinecolortype was successfully destroyed"
  end
end
