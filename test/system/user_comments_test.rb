require "application_system_test_case"

class UserCommentsTest < ApplicationSystemTestCase
  setup do
    @user_comment = user_comments(:one)
  end

  test "visiting the index" do
    visit user_comments_url
    assert_selector "h1", text: "User Comments"
  end

  test "creating a User comment" do
    visit user_comments_url
    click_on "New User Comment"

    fill_in "Date created", with: @user_comment.date_created
    fill_in "Fk creator", with: @user_comment.fk_creator_id
    fill_in "Fk user", with: @user_comment.fk_user_id
    fill_in "Value", with: @user_comment.value
    click_on "Create User comment"

    assert_text "User comment was successfully created"
    click_on "Back"
  end

  test "updating a User comment" do
    visit user_comments_url
    click_on "Edit", match: :first

    fill_in "Date created", with: @user_comment.date_created
    fill_in "Fk creator", with: @user_comment.fk_creator_id
    fill_in "Fk user", with: @user_comment.fk_user_id
    fill_in "Value", with: @user_comment.value
    click_on "Update User comment"

    assert_text "User comment was successfully updated"
    click_on "Back"
  end

  test "destroying a User comment" do
    visit user_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User comment was successfully destroyed"
  end
end
