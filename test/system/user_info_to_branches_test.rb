require "application_system_test_case"

class UserInfoToBranchesTest < ApplicationSystemTestCase
  setup do
    @user_info_to_branch = user_info_to_branches(:one)
  end

  test "visiting the index" do
    visit user_info_to_branches_url
    assert_selector "h1", text: "User Info To Branches"
  end

  test "creating a User info to branch" do
    visit user_info_to_branches_url
    click_on "New User Info To Branch"

    fill_in "Cpkfk branch", with: @user_info_to_branch.cpkfk_branch_id
    fill_in "Cpkfk user info", with: @user_info_to_branch.cpkfk_user_info_id
    click_on "Create User info to branch"

    assert_text "User info to branch was successfully created"
    click_on "Back"
  end

  test "updating a User info to branch" do
    visit user_info_to_branches_url
    click_on "Edit", match: :first

    fill_in "Cpkfk branch", with: @user_info_to_branch.cpkfk_branch_id
    fill_in "Cpkfk user info", with: @user_info_to_branch.cpkfk_user_info_id
    click_on "Update User info to branch"

    assert_text "User info to branch was successfully updated"
    click_on "Back"
  end

  test "destroying a User info to branch" do
    visit user_info_to_branches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User info to branch was successfully destroyed"
  end
end
