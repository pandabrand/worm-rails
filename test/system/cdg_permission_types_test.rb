require "application_system_test_case"

class CdgPermissionTypesTest < ApplicationSystemTestCase
  setup do
    @cdg_permission_type = cdg_permission_types(:one)
  end

  test "visiting the index" do
    visit cdg_permission_types_url
    assert_selector "h1", text: "Cdg Permission Types"
  end

  test "creating a Cdg permission type" do
    visit cdg_permission_types_url
    click_on "New Cdg Permission Type"

    fill_in "Fk permission type", with: @cdg_permission_type.fk_permission_type_id
    fill_in "Is active", with: @cdg_permission_type.is_active
    fill_in "Name", with: @cdg_permission_type.name
    fill_in "Sort order", with: @cdg_permission_type.sort_order
    click_on "Create Cdg permission type"

    assert_text "Cdg permission type was successfully created"
    click_on "Back"
  end

  test "updating a Cdg permission type" do
    visit cdg_permission_types_url
    click_on "Edit", match: :first

    fill_in "Fk permission type", with: @cdg_permission_type.fk_permission_type_id
    fill_in "Is active", with: @cdg_permission_type.is_active
    fill_in "Name", with: @cdg_permission_type.name
    fill_in "Sort order", with: @cdg_permission_type.sort_order
    click_on "Update Cdg permission type"

    assert_text "Cdg permission type was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg permission type" do
    visit cdg_permission_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg permission type was successfully destroyed"
  end
end
