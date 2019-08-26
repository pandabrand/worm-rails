require "application_system_test_case"

class LabBranchesTest < ApplicationSystemTestCase
  setup do
    @lab_branch = lab_branches(:one)
  end

  test "visiting the index" do
    visit lab_branches_url
    assert_selector "h1", text: "Lab Branches"
  end

  test "creating a Lab branch" do
    visit lab_branches_url
    click_on "New Lab Branch"

    fill_in "Address1", with: @lab_branch.address1
    fill_in "Address2", with: @lab_branch.address2
    fill_in "Branch", with: @lab_branch.branch_id
    fill_in "City", with: @lab_branch.city
    fill_in "Fk area", with: @lab_branch.fk_area_id
    fill_in "Fk complex", with: @lab_branch.fk_complex_id
    fill_in "Fk country", with: @lab_branch.fk_country_id
    fill_in "Fk us state", with: @lab_branch.fk_us_state_id
    fill_in "Is active", with: @lab_branch.is_active
    fill_in "Name", with: @lab_branch.name
    fill_in "State", with: @lab_branch.state
    fill_in "Zip", with: @lab_branch.zip
    click_on "Create Lab branch"

    assert_text "Lab branch was successfully created"
    click_on "Back"
  end

  test "updating a Lab branch" do
    visit lab_branches_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @lab_branch.address1
    fill_in "Address2", with: @lab_branch.address2
    fill_in "Branch", with: @lab_branch.branch_id
    fill_in "City", with: @lab_branch.city
    fill_in "Fk area", with: @lab_branch.fk_area_id
    fill_in "Fk complex", with: @lab_branch.fk_complex_id
    fill_in "Fk country", with: @lab_branch.fk_country_id
    fill_in "Fk us state", with: @lab_branch.fk_us_state_id
    fill_in "Is active", with: @lab_branch.is_active
    fill_in "Name", with: @lab_branch.name
    fill_in "State", with: @lab_branch.state
    fill_in "Zip", with: @lab_branch.zip
    click_on "Update Lab branch"

    assert_text "Lab branch was successfully updated"
    click_on "Back"
  end

  test "destroying a Lab branch" do
    visit lab_branches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lab branch was successfully destroyed"
  end
end
