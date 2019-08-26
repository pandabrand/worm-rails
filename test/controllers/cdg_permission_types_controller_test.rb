require 'test_helper'

class CdgPermissionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_permission_type = cdg_permission_types(:one)
  end

  test "should get index" do
    get cdg_permission_types_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_permission_type_url
    assert_response :success
  end

  test "should create cdg_permission_type" do
    assert_difference('CdgPermissionType.count') do
      post cdg_permission_types_url, params: { cdg_permission_type: { fk_permission_type_id: @cdg_permission_type.fk_permission_type_id, is_active: @cdg_permission_type.is_active, name: @cdg_permission_type.name, sort_order: @cdg_permission_type.sort_order } }
    end

    assert_redirected_to cdg_permission_type_url(CdgPermissionType.last)
  end

  test "should show cdg_permission_type" do
    get cdg_permission_type_url(@cdg_permission_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_permission_type_url(@cdg_permission_type)
    assert_response :success
  end

  test "should update cdg_permission_type" do
    patch cdg_permission_type_url(@cdg_permission_type), params: { cdg_permission_type: { fk_permission_type_id: @cdg_permission_type.fk_permission_type_id, is_active: @cdg_permission_type.is_active, name: @cdg_permission_type.name, sort_order: @cdg_permission_type.sort_order } }
    assert_redirected_to cdg_permission_type_url(@cdg_permission_type)
  end

  test "should destroy cdg_permission_type" do
    assert_difference('CdgPermissionType.count', -1) do
      delete cdg_permission_type_url(@cdg_permission_type)
    end

    assert_redirected_to cdg_permission_types_url
  end
end
