require "application_system_test_case"

class RoletitlesTest < ApplicationSystemTestCase
  setup do
    @roletitle = roletitles(:one)
  end

  test "visiting the index" do
    visit roletitles_url
    assert_selector "h1", text: "Roletitles"
  end

  test "creating a Roletitle" do
    visit roletitles_url
    click_on "New Roletitle"

    fill_in "Fk role", with: @roletitle.fk_role_id
    fill_in "Is active", with: @roletitle.is_active
    fill_in "Name", with: @roletitle.name
    click_on "Create Roletitle"

    assert_text "Roletitle was successfully created"
    click_on "Back"
  end

  test "updating a Roletitle" do
    visit roletitles_url
    click_on "Edit", match: :first

    fill_in "Fk role", with: @roletitle.fk_role_id
    fill_in "Is active", with: @roletitle.is_active
    fill_in "Name", with: @roletitle.name
    click_on "Update Roletitle"

    assert_text "Roletitle was successfully updated"
    click_on "Back"
  end

  test "destroying a Roletitle" do
    visit roletitles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roletitle was successfully destroyed"
  end
end
