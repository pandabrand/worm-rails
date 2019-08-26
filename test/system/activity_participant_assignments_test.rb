require "application_system_test_case"

class ActivityParticipantAssignmentsTest < ApplicationSystemTestCase
  setup do
    @activity_participant_assignment = activity_participant_assignments(:one)
  end

  test "visiting the index" do
    visit activity_participant_assignments_url
    assert_selector "h1", text: "Activity Participant Assignments"
  end

  test "creating a Activity participant assignment" do
    visit activity_participant_assignments_url
    click_on "New Activity Participant Assignment"

    fill_in "Cpkfk activity instance", with: @activity_participant_assignment.cpkfk_activity_instance_id
    fill_in "Cpkfk user", with: @activity_participant_assignment.cpkfk_user_id
    fill_in "Date created", with: @activity_participant_assignment.date_created
    fill_in "Fk assistant", with: @activity_participant_assignment.fk_assistant_id
    click_on "Create Activity participant assignment"

    assert_text "Activity participant assignment was successfully created"
    click_on "Back"
  end

  test "updating a Activity participant assignment" do
    visit activity_participant_assignments_url
    click_on "Edit", match: :first

    fill_in "Cpkfk activity instance", with: @activity_participant_assignment.cpkfk_activity_instance_id
    fill_in "Cpkfk user", with: @activity_participant_assignment.cpkfk_user_id
    fill_in "Date created", with: @activity_participant_assignment.date_created
    fill_in "Fk assistant", with: @activity_participant_assignment.fk_assistant_id
    click_on "Update Activity participant assignment"

    assert_text "Activity participant assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity participant assignment" do
    visit activity_participant_assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity participant assignment was successfully destroyed"
  end
end
