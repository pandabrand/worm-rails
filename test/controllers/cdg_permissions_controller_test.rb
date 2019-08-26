require 'test_helper'

class CdgPermissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_permission = cdg_permissions(:one)
  end

  test "should get index" do
    get cdg_permissions_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_permission_url
    assert_response :success
  end

  test "should create cdg_permission" do
    assert_difference('CdgPermission.count') do
      post cdg_permissions_url, params: { cdg_permission: { agent_type: @cdg_permission.agent_type, fk_function_group_resource_id: @cdg_permission.fk_function_group_resource_id, fk_function_resource_id: @cdg_permission.fk_function_resource_id, fk_nav_menu_item_resource_id: @cdg_permission.fk_nav_menu_item_resource_id, fk_permission_type_id: @cdg_permission.fk_permission_type_id, fk_role_agent_id: @cdg_permission.fk_role_agent_id, fk_user_agent_id: @cdg_permission.fk_user_agent_id, is_active: @cdg_permission.is_active, permission: @cdg_permission.permission, resource_type: @cdg_permission.resource_type } }
    end

    assert_redirected_to cdg_permission_url(CdgPermission.last)
  end

  test "should show cdg_permission" do
    get cdg_permission_url(@cdg_permission)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_permission_url(@cdg_permission)
    assert_response :success
  end

  test "should update cdg_permission" do
    patch cdg_permission_url(@cdg_permission), params: { cdg_permission: { agent_type: @cdg_permission.agent_type, fk_function_group_resource_id: @cdg_permission.fk_function_group_resource_id, fk_function_resource_id: @cdg_permission.fk_function_resource_id, fk_nav_menu_item_resource_id: @cdg_permission.fk_nav_menu_item_resource_id, fk_permission_type_id: @cdg_permission.fk_permission_type_id, fk_role_agent_id: @cdg_permission.fk_role_agent_id, fk_user_agent_id: @cdg_permission.fk_user_agent_id, is_active: @cdg_permission.is_active, permission: @cdg_permission.permission, resource_type: @cdg_permission.resource_type } }
    assert_redirected_to cdg_permission_url(@cdg_permission)
  end

  test "should destroy cdg_permission" do
    assert_difference('CdgPermission.count', -1) do
      delete cdg_permission_url(@cdg_permission)
    end

    assert_redirected_to cdg_permissions_url
  end
end
