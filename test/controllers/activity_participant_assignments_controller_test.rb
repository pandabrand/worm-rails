require 'test_helper'

class ActivityParticipantAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_participant_assignment = activity_participant_assignments(:one)
  end

  test "should get index" do
    get activity_participant_assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_participant_assignment_url
    assert_response :success
  end

  test "should create activity_participant_assignment" do
    assert_difference('ActivityParticipantAssignment.count') do
      post activity_participant_assignments_url, params: { activity_participant_assignment: { cpkfk_activity_instance_id: @activity_participant_assignment.cpkfk_activity_instance_id, cpkfk_user_id: @activity_participant_assignment.cpkfk_user_id, date_created: @activity_participant_assignment.date_created, fk_assistant_id: @activity_participant_assignment.fk_assistant_id } }
    end

    assert_redirected_to activity_participant_assignment_url(ActivityParticipantAssignment.last)
  end

  test "should show activity_participant_assignment" do
    get activity_participant_assignment_url(@activity_participant_assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_participant_assignment_url(@activity_participant_assignment)
    assert_response :success
  end

  test "should update activity_participant_assignment" do
    patch activity_participant_assignment_url(@activity_participant_assignment), params: { activity_participant_assignment: { cpkfk_activity_instance_id: @activity_participant_assignment.cpkfk_activity_instance_id, cpkfk_user_id: @activity_participant_assignment.cpkfk_user_id, date_created: @activity_participant_assignment.date_created, fk_assistant_id: @activity_participant_assignment.fk_assistant_id } }
    assert_redirected_to activity_participant_assignment_url(@activity_participant_assignment)
  end

  test "should destroy activity_participant_assignment" do
    assert_difference('ActivityParticipantAssignment.count', -1) do
      delete activity_participant_assignment_url(@activity_participant_assignment)
    end

    assert_redirected_to activity_participant_assignments_url
  end
end
