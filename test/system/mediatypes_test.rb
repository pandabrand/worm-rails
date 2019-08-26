require "application_system_test_case"

class MediatypesTest < ApplicationSystemTestCase
  setup do
    @mediatype = mediatypes(:one)
  end

  test "visiting the index" do
    visit mediatypes_url
    assert_selector "h1", text: "Mediatypes"
  end

  test "creating a Mediatype" do
    visit mediatypes_url
    click_on "New Mediatype"

    fill_in "Name", with: @mediatype.name
    click_on "Create Mediatype"

    assert_text "Mediatype was successfully created"
    click_on "Back"
  end

  test "updating a Mediatype" do
    visit mediatypes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @mediatype.name
    click_on "Update Mediatype"

    assert_text "Mediatype was successfully updated"
    click_on "Back"
  end

  test "destroying a Mediatype" do
    visit mediatypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mediatype was successfully destroyed"
  end
end
