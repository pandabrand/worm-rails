require "application_system_test_case"

class PublicationTypesTest < ApplicationSystemTestCase
  setup do
    @publication_type = publication_types(:one)
  end

  test "visiting the index" do
    visit publication_types_url
    assert_selector "h1", text: "Publication Types"
  end

  test "creating a Publication type" do
    visit publication_types_url
    click_on "New Publication Type"

    fill_in "Name", with: @publication_type.name
    click_on "Create Publication type"

    assert_text "Publication type was successfully created"
    click_on "Back"
  end

  test "updating a Publication type" do
    visit publication_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @publication_type.name
    click_on "Update Publication type"

    assert_text "Publication type was successfully updated"
    click_on "Back"
  end

  test "destroying a Publication type" do
    visit publication_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Publication type was successfully destroyed"
  end
end
