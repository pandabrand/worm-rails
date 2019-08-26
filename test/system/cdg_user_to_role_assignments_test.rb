require "application_system_test_case"

class CdgUserToRoleAssignmentsTest < ApplicationSystemTestCase
  setup do
    @cdg_user_to_role_assignment = cdg_user_to_role_assignments(:one)
  end

  test "visiting the index" do
    visit cdg_user_to_role_assignments_url
    assert_selector "h1", text: "Cdg User To Role Assignments"
  end

  test "creating a Cdg user to role assignment" do
    visit cdg_user_to_role_assignments_url
    click_on "New Cdg User To Role Assignment"

    fill_in "Cpkfk role", with: @cdg_user_to_role_assignment.cpkfk_role_id
    fill_in "Cpkfk user", with: @cdg_user_to_role_assignment.cpkfk_user_id
    fill_in "Is active", with: @cdg_user_to_role_assignment.is_active
    fill_in "Role sort order", with: @cdg_user_to_role_assignment.role_sort_order
    fill_in "User sort order", with: @cdg_user_to_role_assignment.user_sort_order
    click_on "Create Cdg user to role assignment"

    assert_text "Cdg user to role assignment was successfully created"
    click_on "Back"
  end

  test "updating a Cdg user to role assignment" do
    visit cdg_user_to_role_assignments_url
    click_on "Edit", match: :first

    fill_in "Cpkfk role", with: @cdg_user_to_role_assignment.cpkfk_role_id
    fill_in "Cpkfk user", with: @cdg_user_to_role_assignment.cpkfk_user_id
    fill_in "Is active", with: @cdg_user_to_role_assignment.is_active
    fill_in "Role sort order", with: @cdg_user_to_role_assignment.role_sort_order
    fill_in "User sort order", with: @cdg_user_to_role_assignment.user_sort_order
    click_on "Update Cdg user to role assignment"

    assert_text "Cdg user to role assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg user to role assignment" do
    visit cdg_user_to_role_assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg user to role assignment was successfully destroyed"
  end
end
