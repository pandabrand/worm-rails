require "application_system_test_case"

class FunctionToGroupAssignmentsTest < ApplicationSystemTestCase
  setup do
    @function_to_group_assignment = function_to_group_assignments(:one)
  end

  test "visiting the index" do
    visit function_to_group_assignments_url
    assert_selector "h1", text: "Function To Group Assignments"
  end

  test "creating a Function to group assignment" do
    visit function_to_group_assignments_url
    click_on "New Function To Group Assignment"

    fill_in "Cpkfk function group", with: @function_to_group_assignment.cpkfk_function_group_id
    fill_in "Cpkfk function", with: @function_to_group_assignment.cpkfk_function_id
    fill_in "Function sort order", with: @function_to_group_assignment.function_sort_order
    fill_in "Group sort order", with: @function_to_group_assignment.group_sort_order
    click_on "Create Function to group assignment"

    assert_text "Function to group assignment was successfully created"
    click_on "Back"
  end

  test "updating a Function to group assignment" do
    visit function_to_group_assignments_url
    click_on "Edit", match: :first

    fill_in "Cpkfk function group", with: @function_to_group_assignment.cpkfk_function_group_id
    fill_in "Cpkfk function", with: @function_to_group_assignment.cpkfk_function_id
    fill_in "Function sort order", with: @function_to_group_assignment.function_sort_order
    fill_in "Group sort order", with: @function_to_group_assignment.group_sort_order
    click_on "Update Function to group assignment"

    assert_text "Function to group assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Function to group assignment" do
    visit function_to_group_assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Function to group assignment was successfully destroyed"
  end
end
