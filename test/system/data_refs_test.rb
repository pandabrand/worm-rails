require "application_system_test_case"

class DataRefsTest < ApplicationSystemTestCase
  setup do
    @data_ref = data_refs(:one)
  end

  test "visiting the index" do
    visit data_refs_url
    assert_selector "h1", text: "Data Refs"
  end

  test "creating a Data ref" do
    visit data_refs_url
    click_on "New Data Ref"

    fill_in "Fk type", with: @data_ref.fk_type_id
    fill_in "Type", with: @data_ref.type
    fill_in "Value", with: @data_ref.value
    click_on "Create Data ref"

    assert_text "Data ref was successfully created"
    click_on "Back"
  end

  test "updating a Data ref" do
    visit data_refs_url
    click_on "Edit", match: :first

    fill_in "Fk type", with: @data_ref.fk_type_id
    fill_in "Type", with: @data_ref.type
    fill_in "Value", with: @data_ref.value
    click_on "Update Data ref"

    assert_text "Data ref was successfully updated"
    click_on "Back"
  end

  test "destroying a Data ref" do
    visit data_refs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data ref was successfully destroyed"
  end
end
