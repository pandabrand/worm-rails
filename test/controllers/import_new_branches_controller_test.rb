require 'test_helper'

class ImportNewBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @import_new_branch = import_new_branches(:one)
  end

  test "should get index" do
    get import_new_branches_url
    assert_response :success
  end

  test "should get new" do
    get new_import_new_branch_url
    assert_response :success
  end

  test "should create import_new_branch" do
    assert_difference('ImportNewBranch.count') do
      post import_new_branches_url, params: { import_new_branch: { address1: @import_new_branch.address1, address2: @import_new_branch.address2, city: @import_new_branch.city, district_area_id: @import_new_branch.district_area_id, name: @import_new_branch.name, state: @import_new_branch.state, zip: @import_new_branch.zip } }
    end

    assert_redirected_to import_new_branch_url(ImportNewBranch.last)
  end

  test "should show import_new_branch" do
    get import_new_branch_url(@import_new_branch)
    assert_response :success
  end

  test "should get edit" do
    get edit_import_new_branch_url(@import_new_branch)
    assert_response :success
  end

  test "should update import_new_branch" do
    patch import_new_branch_url(@import_new_branch), params: { import_new_branch: { address1: @import_new_branch.address1, address2: @import_new_branch.address2, city: @import_new_branch.city, district_area_id: @import_new_branch.district_area_id, name: @import_new_branch.name, state: @import_new_branch.state, zip: @import_new_branch.zip } }
    assert_redirected_to import_new_branch_url(@import_new_branch)
  end

  test "should destroy import_new_branch" do
    assert_difference('ImportNewBranch.count', -1) do
      delete import_new_branch_url(@import_new_branch)
    end

    assert_redirected_to import_new_branches_url
  end
end
