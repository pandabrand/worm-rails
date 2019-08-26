require 'test_helper'

class CdgRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_role = cdg_roles(:one)
  end

  test "should get index" do
    get cdg_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_role_url
    assert_response :success
  end

  test "should create cdg_role" do
    assert_difference('CdgRole.count') do
      post cdg_roles_url, params: { cdg_role: { is_active: @cdg_role.is_active, name: @cdg_role.name, sort_order: @cdg_role.sort_order } }
    end

    assert_redirected_to cdg_role_url(CdgRole.last)
  end

  test "should show cdg_role" do
    get cdg_role_url(@cdg_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_role_url(@cdg_role)
    assert_response :success
  end

  test "should update cdg_role" do
    patch cdg_role_url(@cdg_role), params: { cdg_role: { is_active: @cdg_role.is_active, name: @cdg_role.name, sort_order: @cdg_role.sort_order } }
    assert_redirected_to cdg_role_url(@cdg_role)
  end

  test "should destroy cdg_role" do
    assert_difference('CdgRole.count', -1) do
      delete cdg_role_url(@cdg_role)
    end

    assert_redirected_to cdg_roles_url
  end
end
