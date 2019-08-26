require "application_system_test_case"

class DataRefTypesTest < ApplicationSystemTestCase
  setup do
    @data_ref_type = data_ref_types(:one)
  end

  test "visiting the index" do
    visit data_ref_types_url
    assert_selector "h1", text: "Data Ref Types"
  end

  test "creating a Data ref type" do
    visit data_ref_types_url
    click_on "New Data Ref Type"

    fill_in "Name", with: @data_ref_type.name
    click_on "Create Data ref type"

    assert_text "Data ref type was successfully created"
    click_on "Back"
  end

  test "updating a Data ref type" do
    visit data_ref_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @data_ref_type.name
    click_on "Update Data ref type"

    assert_text "Data ref type was successfully updated"
    click_on "Back"
  end

  test "destroying a Data ref type" do
    visit data_ref_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data ref type was successfully destroyed"
  end
end
