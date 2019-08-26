require 'test_helper'

class CdgUserToRoleAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_user_to_role_assignment = cdg_user_to_role_assignments(:one)
  end

  test "should get index" do
    get cdg_user_to_role_assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_user_to_role_assignment_url
    assert_response :success
  end

  test "should create cdg_user_to_role_assignment" do
    assert_difference('CdgUserToRoleAssignment.count') do
      post cdg_user_to_role_assignments_url, params: { cdg_user_to_role_assignment: { cpkfk_role_id: @cdg_user_to_role_assignment.cpkfk_role_id, cpkfk_user_id: @cdg_user_to_role_assignment.cpkfk_user_id, is_active: @cdg_user_to_role_assignment.is_active, role_sort_order: @cdg_user_to_role_assignment.role_sort_order, user_sort_order: @cdg_user_to_role_assignment.user_sort_order } }
    end

    assert_redirected_to cdg_user_to_role_assignment_url(CdgUserToRoleAssignment.last)
  end

  test "should show cdg_user_to_role_assignment" do
    get cdg_user_to_role_assignment_url(@cdg_user_to_role_assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_user_to_role_assignment_url(@cdg_user_to_role_assignment)
    assert_response :success
  end

  test "should update cdg_user_to_role_assignment" do
    patch cdg_user_to_role_assignment_url(@cdg_user_to_role_assignment), params: { cdg_user_to_role_assignment: { cpkfk_role_id: @cdg_user_to_role_assignment.cpkfk_role_id, cpkfk_user_id: @cdg_user_to_role_assignment.cpkfk_user_id, is_active: @cdg_user_to_role_assignment.is_active, role_sort_order: @cdg_user_to_role_assignment.role_sort_order, user_sort_order: @cdg_user_to_role_assignment.user_sort_order } }
    assert_redirected_to cdg_user_to_role_assignment_url(@cdg_user_to_role_assignment)
  end

  test "should destroy cdg_user_to_role_assignment" do
    assert_difference('CdgUserToRoleAssignment.count', -1) do
      delete cdg_user_to_role_assignment_url(@cdg_user_to_role_assignment)
    end

    assert_redirected_to cdg_user_to_role_assignments_url
  end
end
