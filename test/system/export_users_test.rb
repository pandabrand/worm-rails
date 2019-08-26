require "application_system_test_case"

class ExportUsersTest < ApplicationSystemTestCase
  setup do
    @export_user = export_users(:one)
  end

  test "visiting the index" do
    visit export_users_url
    assert_selector "h1", text: "Export Users"
  end

  test "creating a Export user" do
    visit export_users_url
    click_on "New Export User"

    fill_in "Area", with: @export_user.area_id
    fill_in "Branch", with: @export_user.branch_id
    fill_in "Email address", with: @export_user.email_address
    fill_in "Emp", with: @export_user.emp_id
    fill_in "Financial advisor", with: @export_user.financial_advisor_id
    fill_in "First name", with: @export_user.first_name
    fill_in "Fk user", with: @export_user.fk_user_id
    fill_in "Job title", with: @export_user.job_title
    fill_in "Last name", with: @export_user.last_name
    fill_in "Region", with: @export_user.region_id
    click_on "Create Export user"

    assert_text "Export user was successfully created"
    click_on "Back"
  end

  test "updating a Export user" do
    visit export_users_url
    click_on "Edit", match: :first

    fill_in "Area", with: @export_user.area_id
    fill_in "Branch", with: @export_user.branch_id
    fill_in "Email address", with: @export_user.email_address
    fill_in "Emp", with: @export_user.emp_id
    fill_in "Financial advisor", with: @export_user.financial_advisor_id
    fill_in "First name", with: @export_user.first_name
    fill_in "Fk user", with: @export_user.fk_user_id
    fill_in "Job title", with: @export_user.job_title
    fill_in "Last name", with: @export_user.last_name
    fill_in "Region", with: @export_user.region_id
    click_on "Update Export user"

    assert_text "Export user was successfully updated"
    click_on "Back"
  end

  test "destroying a Export user" do
    visit export_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Export user was successfully destroyed"
  end
end
