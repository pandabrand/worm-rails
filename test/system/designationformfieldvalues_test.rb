require "application_system_test_case"

class DesignationformfieldvaluesTest < ApplicationSystemTestCase
  setup do
    @designationformfieldvalue = designationformfieldvalues(:one)
  end

  test "visiting the index" do
    visit designationformfieldvalues_url
    assert_selector "h1", text: "Designationformfieldvalues"
  end

  test "creating a Designationformfieldvalue" do
    visit designationformfieldvalues_url
    click_on "New Designationformfieldvalue"

    fill_in "Designationpk", with: @designationformfieldvalue.designationPk_id
    fill_in "Formfieldvaluepkid", with: @designationformfieldvalue.formFieldValuePkID
    click_on "Create Designationformfieldvalue"

    assert_text "Designationformfieldvalue was successfully created"
    click_on "Back"
  end

  test "updating a Designationformfieldvalue" do
    visit designationformfieldvalues_url
    click_on "Edit", match: :first

    fill_in "Designationpk", with: @designationformfieldvalue.designationPk_id
    fill_in "Formfieldvaluepkid", with: @designationformfieldvalue.formFieldValuePkID
    click_on "Update Designationformfieldvalue"

    assert_text "Designationformfieldvalue was successfully updated"
    click_on "Back"
  end

  test "destroying a Designationformfieldvalue" do
    visit designationformfieldvalues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Designationformfieldvalue was successfully destroyed"
  end
end
