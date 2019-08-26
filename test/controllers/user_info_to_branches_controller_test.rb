require 'test_helper'

class UserInfoToBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_info_to_branch = user_info_to_branches(:one)
  end

  test "should get index" do
    get user_info_to_branches_url
    assert_response :success
  end

  test "should get new" do
    get new_user_info_to_branch_url
    assert_response :success
  end

  test "should create user_info_to_branch" do
    assert_difference('UserInfoToBranch.count') do
      post user_info_to_branches_url, params: { user_info_to_branch: { cpkfk_branch_id: @user_info_to_branch.cpkfk_branch_id, cpkfk_user_info_id: @user_info_to_branch.cpkfk_user_info_id } }
    end

    assert_redirected_to user_info_to_branch_url(UserInfoToBranch.last)
  end

  test "should show user_info_to_branch" do
    get user_info_to_branch_url(@user_info_to_branch)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_info_to_branch_url(@user_info_to_branch)
    assert_response :success
  end

  test "should update user_info_to_branch" do
    patch user_info_to_branch_url(@user_info_to_branch), params: { user_info_to_branch: { cpkfk_branch_id: @user_info_to_branch.cpkfk_branch_id, cpkfk_user_info_id: @user_info_to_branch.cpkfk_user_info_id } }
    assert_redirected_to user_info_to_branch_url(@user_info_to_branch)
  end

  test "should destroy user_info_to_branch" do
    assert_difference('UserInfoToBranch.count', -1) do
      delete user_info_to_branch_url(@user_info_to_branch)
    end

    assert_redirected_to user_info_to_branches_url
  end
end
