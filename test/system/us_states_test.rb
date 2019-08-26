require "application_system_test_case"

class UsStatesTest < ApplicationSystemTestCase
  setup do
    @us_state = us_states(:one)
  end

  test "visiting the index" do
    visit us_states_url
    assert_selector "h1", text: "Us States"
  end

  test "creating a Us state" do
    visit us_states_url
    click_on "New Us State"

    fill_in "Abbreviation", with: @us_state.abbreviation
    fill_in "Name", with: @us_state.name
    fill_in "Sort order", with: @us_state.sort_order
    click_on "Create Us state"

    assert_text "Us state was successfully created"
    click_on "Back"
  end

  test "updating a Us state" do
    visit us_states_url
    click_on "Edit", match: :first

    fill_in "Abbreviation", with: @us_state.abbreviation
    fill_in "Name", with: @us_state.name
    fill_in "Sort order", with: @us_state.sort_order
    click_on "Update Us state"

    assert_text "Us state was successfully updated"
    click_on "Back"
  end

  test "destroying a Us state" do
    visit us_states_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Us state was successfully destroyed"
  end
end
