require "application_system_test_case"

class DataRef2sTest < ApplicationSystemTestCase
  setup do
    @data_ref2 = data_ref2s(:one)
  end

  test "visiting the index" do
    visit data_ref2s_url
    assert_selector "h1", text: "Data Ref2s"
  end

  test "creating a Data ref2" do
    visit data_ref2s_url
    click_on "New Data Ref2"

    fill_in "Fk type", with: @data_ref2.fk_type_id
    fill_in "Type", with: @data_ref2.type
    fill_in "Value", with: @data_ref2.value
    click_on "Create Data ref2"

    assert_text "Data ref2 was successfully created"
    click_on "Back"
  end

  test "updating a Data ref2" do
    visit data_ref2s_url
    click_on "Edit", match: :first

    fill_in "Fk type", with: @data_ref2.fk_type_id
    fill_in "Type", with: @data_ref2.type
    fill_in "Value", with: @data_ref2.value
    click_on "Update Data ref2"

    assert_text "Data ref2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Data ref2" do
    visit data_ref2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data ref2 was successfully destroyed"
  end
end
