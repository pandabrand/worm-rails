require "application_system_test_case"

class CustomvaluesTest < ApplicationSystemTestCase
  setup do
    @customvalue = customvalues(:one)
  end

  test "visiting the index" do
    visit customvalues_url
    assert_selector "h1", text: "Customvalues"
  end

  test "creating a Customvalue" do
    visit customvalues_url
    click_on "New Customvalue"

    fill_in "Name", with: @customvalue.name
    fill_in "Templateformfieldid", with: @customvalue.templateFormFieldID
    fill_in "Value", with: @customvalue.value
    click_on "Create Customvalue"

    assert_text "Customvalue was successfully created"
    click_on "Back"
  end

  test "updating a Customvalue" do
    visit customvalues_url
    click_on "Edit", match: :first

    fill_in "Name", with: @customvalue.name
    fill_in "Templateformfieldid", with: @customvalue.templateFormFieldID
    fill_in "Value", with: @customvalue.value
    click_on "Update Customvalue"

    assert_text "Customvalue was successfully updated"
    click_on "Back"
  end

  test "destroying a Customvalue" do
    visit customvalues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customvalue was successfully destroyed"
  end
end
