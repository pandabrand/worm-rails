require "application_system_test_case"

class WorkFlowTransitionConditionsTest < ApplicationSystemTestCase
  setup do
    @work_flow_transition_condition = work_flow_transition_conditions(:one)
  end

  test "visiting the index" do
    visit work_flow_transition_conditions_url
    assert_selector "h1", text: "Work Flow Transition Conditions"
  end

  test "creating a Work flow transition condition" do
    visit work_flow_transition_conditions_url
    click_on "New Work Flow Transition Condition"

    fill_in "Cpkfk predecessor", with: @work_flow_transition_condition.cpkfk_predecessor_id
    fill_in "Cpkfk successor", with: @work_flow_transition_condition.cpkfk_successor_id
    fill_in "Is active", with: @work_flow_transition_condition.is_active
    fill_in "Name", with: @work_flow_transition_condition.name
    fill_in "Transitioncode", with: @work_flow_transition_condition.transitionCode
    click_on "Create Work flow transition condition"

    assert_text "Work flow transition condition was successfully created"
    click_on "Back"
  end

  test "updating a Work flow transition condition" do
    visit work_flow_transition_conditions_url
    click_on "Edit", match: :first

    fill_in "Cpkfk predecessor", with: @work_flow_transition_condition.cpkfk_predecessor_id
    fill_in "Cpkfk successor", with: @work_flow_transition_condition.cpkfk_successor_id
    fill_in "Is active", with: @work_flow_transition_condition.is_active
    fill_in "Name", with: @work_flow_transition_condition.name
    fill_in "Transitioncode", with: @work_flow_transition_condition.transitionCode
    click_on "Update Work flow transition condition"

    assert_text "Work flow transition condition was successfully updated"
    click_on "Back"
  end

  test "destroying a Work flow transition condition" do
    visit work_flow_transition_conditions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work flow transition condition was successfully destroyed"
  end
end
