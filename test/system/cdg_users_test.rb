require "application_system_test_case"

class CdgUsersTest < ApplicationSystemTestCase
  setup do
    @cdg_user = cdg_users(:one)
  end

  test "visiting the index" do
    visit cdg_users_url
    assert_selector "h1", text: "Cdg Users"
  end

  test "creating a Cdg user" do
    visit cdg_users_url
    click_on "New Cdg User"

    fill_in "Date created", with: @cdg_user.date_created
    fill_in "Date last logged in", with: @cdg_user.date_last_logged_in
    fill_in "Date modified", with: @cdg_user.date_modified
    fill_in "Fk user", with: @cdg_user.fk_user_id
    fill_in "Fk user info", with: @cdg_user.fk_user_info_id
    fill_in "Is active", with: @cdg_user.is_active
    fill_in "New login", with: @cdg_user.new_login
    fill_in "Password", with: @cdg_user.password
    fill_in "Skip login profile page", with: @cdg_user.skip_login_profile_page
    fill_in "Username", with: @cdg_user.username
    click_on "Create Cdg user"

    assert_text "Cdg user was successfully created"
    click_on "Back"
  end

  test "updating a Cdg user" do
    visit cdg_users_url
    click_on "Edit", match: :first

    fill_in "Date created", with: @cdg_user.date_created
    fill_in "Date last logged in", with: @cdg_user.date_last_logged_in
    fill_in "Date modified", with: @cdg_user.date_modified
    fill_in "Fk user", with: @cdg_user.fk_user_id
    fill_in "Fk user info", with: @cdg_user.fk_user_info_id
    fill_in "Is active", with: @cdg_user.is_active
    fill_in "New login", with: @cdg_user.new_login
    fill_in "Password", with: @cdg_user.password
    fill_in "Skip login profile page", with: @cdg_user.skip_login_profile_page
    fill_in "Username", with: @cdg_user.username
    click_on "Update Cdg user"

    assert_text "Cdg user was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg user" do
    visit cdg_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg user was successfully destroyed"
  end
end
