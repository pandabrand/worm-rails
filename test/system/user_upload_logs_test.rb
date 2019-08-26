require "application_system_test_case"

class UserUploadLogsTest < ApplicationSystemTestCase
  setup do
    @user_upload_log = user_upload_logs(:one)
  end

  test "visiting the index" do
    visit user_upload_logs_url
    assert_selector "h1", text: "User Upload Logs"
  end

  test "creating a User upload log" do
    visit user_upload_logs_url
    click_on "New User Upload Log"

    fill_in "Fk user", with: @user_upload_log.fk_user_id
    fill_in "Type", with: @user_upload_log.type
    fill_in "Upload date", with: @user_upload_log.upload_date
    click_on "Create User upload log"

    assert_text "User upload log was successfully created"
    click_on "Back"
  end

  test "updating a User upload log" do
    visit user_upload_logs_url
    click_on "Edit", match: :first

    fill_in "Fk user", with: @user_upload_log.fk_user_id
    fill_in "Type", with: @user_upload_log.type
    fill_in "Upload date", with: @user_upload_log.upload_date
    click_on "Update User upload log"

    assert_text "User upload log was successfully updated"
    click_on "Back"
  end

  test "destroying a User upload log" do
    visit user_upload_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User upload log was successfully destroyed"
  end
end
