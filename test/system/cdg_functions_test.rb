require "application_system_test_case"

class CdgFunctionsTest < ApplicationSystemTestCase
  setup do
    @cdg_function = cdg_functions(:one)
  end

  test "visiting the index" do
    visit cdg_functions_url
    assert_selector "h1", text: "Cdg Functions"
  end

  test "creating a Cdg function" do
    visit cdg_functions_url
    click_on "New Cdg Function"

    fill_in "Name", with: @cdg_function.name
    fill_in "Sort order", with: @cdg_function.sort_order
    click_on "Create Cdg function"

    assert_text "Cdg function was successfully created"
    click_on "Back"
  end

  test "updating a Cdg function" do
    visit cdg_functions_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cdg_function.name
    fill_in "Sort order", with: @cdg_function.sort_order
    click_on "Update Cdg function"

    assert_text "Cdg function was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg function" do
    visit cdg_functions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg function was successfully destroyed"
  end
end
