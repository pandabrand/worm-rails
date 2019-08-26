require "application_system_test_case"

class CdgPermissionsTest < ApplicationSystemTestCase
  setup do
    @cdg_permission = cdg_permissions(:one)
  end

  test "visiting the index" do
    visit cdg_permissions_url
    assert_selector "h1", text: "Cdg Permissions"
  end

  test "creating a Cdg permission" do
    visit cdg_permissions_url
    click_on "New Cdg Permission"

    fill_in "Agent type", with: @cdg_permission.agent_type
    fill_in "Fk function group resource", with: @cdg_permission.fk_function_group_resource_id
    fill_in "Fk function resource", with: @cdg_permission.fk_function_resource_id
    fill_in "Fk nav menu item resource", with: @cdg_permission.fk_nav_menu_item_resource_id
    fill_in "Fk permission type", with: @cdg_permission.fk_permission_type_id
    fill_in "Fk role agent", with: @cdg_permission.fk_role_agent_id
    fill_in "Fk user agent", with: @cdg_permission.fk_user_agent_id
    fill_in "Is active", with: @cdg_permission.is_active
    fill_in "Permission", with: @cdg_permission.permission
    fill_in "Resource type", with: @cdg_permission.resource_type
    click_on "Create Cdg permission"

    assert_text "Cdg permission was successfully created"
    click_on "Back"
  end

  test "updating a Cdg permission" do
    visit cdg_permissions_url
    click_on "Edit", match: :first

    fill_in "Agent type", with: @cdg_permission.agent_type
    fill_in "Fk function group resource", with: @cdg_permission.fk_function_group_resource_id
    fill_in "Fk function resource", with: @cdg_permission.fk_function_resource_id
    fill_in "Fk nav menu item resource", with: @cdg_permission.fk_nav_menu_item_resource_id
    fill_in "Fk permission type", with: @cdg_permission.fk_permission_type_id
    fill_in "Fk role agent", with: @cdg_permission.fk_role_agent_id
    fill_in "Fk user agent", with: @cdg_permission.fk_user_agent_id
    fill_in "Is active", with: @cdg_permission.is_active
    fill_in "Permission", with: @cdg_permission.permission
    fill_in "Resource type", with: @cdg_permission.resource_type
    click_on "Update Cdg permission"

    assert_text "Cdg permission was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg permission" do
    visit cdg_permissions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg permission was successfully destroyed"
  end
end
