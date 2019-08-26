require 'test_helper'

class FunctionToGroupAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @function_to_group_assignment = function_to_group_assignments(:one)
  end

  test "should get index" do
    get function_to_group_assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_function_to_group_assignment_url
    assert_response :success
  end

  test "should create function_to_group_assignment" do
    assert_difference('FunctionToGroupAssignment.count') do
      post function_to_group_assignments_url, params: { function_to_group_assignment: { cpkfk_function_group_id: @function_to_group_assignment.cpkfk_function_group_id, cpkfk_function_id: @function_to_group_assignment.cpkfk_function_id, function_sort_order: @function_to_group_assignment.function_sort_order, group_sort_order: @function_to_group_assignment.group_sort_order } }
    end

    assert_redirected_to function_to_group_assignment_url(FunctionToGroupAssignment.last)
  end

  test "should show function_to_group_assignment" do
    get function_to_group_assignment_url(@function_to_group_assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_function_to_group_assignment_url(@function_to_group_assignment)
    assert_response :success
  end

  test "should update function_to_group_assignment" do
    patch function_to_group_assignment_url(@function_to_group_assignment), params: { function_to_group_assignment: { cpkfk_function_group_id: @function_to_group_assignment.cpkfk_function_group_id, cpkfk_function_id: @function_to_group_assignment.cpkfk_function_id, function_sort_order: @function_to_group_assignment.function_sort_order, group_sort_order: @function_to_group_assignment.group_sort_order } }
    assert_redirected_to function_to_group_assignment_url(@function_to_group_assignment)
  end

  test "should destroy function_to_group_assignment" do
    assert_difference('FunctionToGroupAssignment.count', -1) do
      delete function_to_group_assignment_url(@function_to_group_assignment)
    end

    assert_redirected_to function_to_group_assignments_url
  end
end
