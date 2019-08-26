require "application_system_test_case"

class CdgRolesTest < ApplicationSystemTestCase
  setup do
    @cdg_role = cdg_roles(:one)
  end

  test "visiting the index" do
    visit cdg_roles_url
    assert_selector "h1", text: "Cdg Roles"
  end

  test "creating a Cdg role" do
    visit cdg_roles_url
    click_on "New Cdg Role"

    fill_in "Is active", with: @cdg_role.is_active
    fill_in "Name", with: @cdg_role.name
    fill_in "Sort order", with: @cdg_role.sort_order
    click_on "Create Cdg role"

    assert_text "Cdg role was successfully created"
    click_on "Back"
  end

  test "updating a Cdg role" do
    visit cdg_roles_url
    click_on "Edit", match: :first

    fill_in "Is active", with: @cdg_role.is_active
    fill_in "Name", with: @cdg_role.name
    fill_in "Sort order", with: @cdg_role.sort_order
    click_on "Update Cdg role"

    assert_text "Cdg role was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg role" do
    visit cdg_roles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg role was successfully destroyed"
  end
end
