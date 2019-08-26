require "application_system_test_case"

class CdgFunctionGroupsTest < ApplicationSystemTestCase
  setup do
    @cdg_function_group = cdg_function_groups(:one)
  end

  test "visiting the index" do
    visit cdg_function_groups_url
    assert_selector "h1", text: "Cdg Function Groups"
  end

  test "creating a Cdg function group" do
    visit cdg_function_groups_url
    click_on "New Cdg Function Group"

    fill_in "Name", with: @cdg_function_group.name
    fill_in "Sort order", with: @cdg_function_group.sort_order
    click_on "Create Cdg function group"

    assert_text "Cdg function group was successfully created"
    click_on "Back"
  end

  test "updating a Cdg function group" do
    visit cdg_function_groups_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cdg_function_group.name
    fill_in "Sort order", with: @cdg_function_group.sort_order
    click_on "Update Cdg function group"

    assert_text "Cdg function group was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg function group" do
    visit cdg_function_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg function group was successfully destroyed"
  end
end
