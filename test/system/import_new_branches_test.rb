require "application_system_test_case"

class ImportNewBranchesTest < ApplicationSystemTestCase
  setup do
    @import_new_branch = import_new_branches(:one)
  end

  test "visiting the index" do
    visit import_new_branches_url
    assert_selector "h1", text: "Import New Branches"
  end

  test "creating a Import new branch" do
    visit import_new_branches_url
    click_on "New Import New Branch"

    fill_in "Address1", with: @import_new_branch.address1
    fill_in "Address2", with: @import_new_branch.address2
    fill_in "City", with: @import_new_branch.city
    fill_in "District area", with: @import_new_branch.district_area_id
    fill_in "Name", with: @import_new_branch.name
    fill_in "State", with: @import_new_branch.state
    fill_in "Zip", with: @import_new_branch.zip
    click_on "Create Import new branch"

    assert_text "Import new branch was successfully created"
    click_on "Back"
  end

  test "updating a Import new branch" do
    visit import_new_branches_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @import_new_branch.address1
    fill_in "Address2", with: @import_new_branch.address2
    fill_in "City", with: @import_new_branch.city
    fill_in "District area", with: @import_new_branch.district_area_id
    fill_in "Name", with: @import_new_branch.name
    fill_in "State", with: @import_new_branch.state
    fill_in "Zip", with: @import_new_branch.zip
    click_on "Update Import new branch"

    assert_text "Import new branch was successfully updated"
    click_on "Back"
  end

  test "destroying a Import new branch" do
    visit import_new_branches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Import new branch was successfully destroyed"
  end
end
