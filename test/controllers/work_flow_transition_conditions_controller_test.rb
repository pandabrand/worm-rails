require 'test_helper'

class WorkFlowTransitionConditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_flow_transition_condition = work_flow_transition_conditions(:one)
  end

  test "should get index" do
    get work_flow_transition_conditions_url
    assert_response :success
  end

  test "should get new" do
    get new_work_flow_transition_condition_url
    assert_response :success
  end

  test "should create work_flow_transition_condition" do
    assert_difference('WorkFlowTransitionCondition.count') do
      post work_flow_transition_conditions_url, params: { work_flow_transition_condition: { cpkfk_predecessor_id: @work_flow_transition_condition.cpkfk_predecessor_id, cpkfk_successor_id: @work_flow_transition_condition.cpkfk_successor_id, is_active: @work_flow_transition_condition.is_active, name: @work_flow_transition_condition.name, transitionCode: @work_flow_transition_condition.transitionCode } }
    end

    assert_redirected_to work_flow_transition_condition_url(WorkFlowTransitionCondition.last)
  end

  test "should show work_flow_transition_condition" do
    get work_flow_transition_condition_url(@work_flow_transition_condition)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_flow_transition_condition_url(@work_flow_transition_condition)
    assert_response :success
  end

  test "should update work_flow_transition_condition" do
    patch work_flow_transition_condition_url(@work_flow_transition_condition), params: { work_flow_transition_condition: { cpkfk_predecessor_id: @work_flow_transition_condition.cpkfk_predecessor_id, cpkfk_successor_id: @work_flow_transition_condition.cpkfk_successor_id, is_active: @work_flow_transition_condition.is_active, name: @work_flow_transition_condition.name, transitionCode: @work_flow_transition_condition.transitionCode } }
    assert_redirected_to work_flow_transition_condition_url(@work_flow_transition_condition)
  end

  test "should destroy work_flow_transition_condition" do
    assert_difference('WorkFlowTransitionCondition.count', -1) do
      delete work_flow_transition_condition_url(@work_flow_transition_condition)
    end

    assert_redirected_to work_flow_transition_conditions_url
  end
end
