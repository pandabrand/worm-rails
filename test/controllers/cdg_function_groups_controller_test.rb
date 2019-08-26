require 'test_helper'

class CdgFunctionGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_function_group = cdg_function_groups(:one)
  end

  test "should get index" do
    get cdg_function_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_function_group_url
    assert_response :success
  end

  test "should create cdg_function_group" do
    assert_difference('CdgFunctionGroup.count') do
      post cdg_function_groups_url, params: { cdg_function_group: { name: @cdg_function_group.name, sort_order: @cdg_function_group.sort_order } }
    end

    assert_redirected_to cdg_function_group_url(CdgFunctionGroup.last)
  end

  test "should show cdg_function_group" do
    get cdg_function_group_url(@cdg_function_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_function_group_url(@cdg_function_group)
    assert_response :success
  end

  test "should update cdg_function_group" do
    patch cdg_function_group_url(@cdg_function_group), params: { cdg_function_group: { name: @cdg_function_group.name, sort_order: @cdg_function_group.sort_order } }
    assert_redirected_to cdg_function_group_url(@cdg_function_group)
  end

  test "should destroy cdg_function_group" do
    assert_difference('CdgFunctionGroup.count', -1) do
      delete cdg_function_group_url(@cdg_function_group)
    end

    assert_redirected_to cdg_function_groups_url
  end
end
