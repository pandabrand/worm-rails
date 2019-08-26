require "application_system_test_case"

class ImportManagersTest < ApplicationSystemTestCase
  setup do
    @import_manager = import_managers(:one)
  end

  test "visiting the index" do
    visit import_managers_url
    assert_selector "h1", text: "Import Managers"
  end

  test "creating a Import manager" do
    visit import_managers_url
    click_on "New Import Manager"

    fill_in "Address", with: @import_manager.address
    fill_in "Area", with: @import_manager.area_id
    fill_in "Branch", with: @import_manager.branch_id
    fill_in "City", with: @import_manager.city
    fill_in "Emp", with: @import_manager.emp_id
    fill_in "First name", with: @import_manager.first_name
    fill_in "Job category", with: @import_manager.job_category
    fill_in "Last name", with: @import_manager.last_name
    fill_in "Region", with: @import_manager.region_id
    fill_in "State", with: @import_manager.state
    fill_in "Work phone", with: @import_manager.work_phone
    fill_in "Zip", with: @import_manager.zip
    click_on "Create Import manager"

    assert_text "Import manager was successfully created"
    click_on "Back"
  end

  test "updating a Import manager" do
    visit import_managers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @import_manager.address
    fill_in "Area", with: @import_manager.area_id
    fill_in "Branch", with: @import_manager.branch_id
    fill_in "City", with: @import_manager.city
    fill_in "Emp", with: @import_manager.emp_id
    fill_in "First name", with: @import_manager.first_name
    fill_in "Job category", with: @import_manager.job_category
    fill_in "Last name", with: @import_manager.last_name
    fill_in "Region", with: @import_manager.region_id
    fill_in "State", with: @import_manager.state
    fill_in "Work phone", with: @import_manager.work_phone
    fill_in "Zip", with: @import_manager.zip
    click_on "Update Import manager"

    assert_text "Import manager was successfully updated"
    click_on "Back"
  end

  test "destroying a Import manager" do
    visit import_managers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Import manager was successfully destroyed"
  end
end
