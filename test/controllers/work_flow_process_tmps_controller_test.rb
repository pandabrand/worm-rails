require 'test_helper'

class WorkFlowProcessTmpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_flow_process_tmp = work_flow_process_tmps(:one)
  end

  test "should get index" do
    get work_flow_process_tmps_url
    assert_response :success
  end

  test "should get new" do
    get new_work_flow_process_tmp_url
    assert_response :success
  end

  test "should create work_flow_process_tmp" do
    assert_difference('WorkFlowProcessTmp.count') do
      post work_flow_process_tmps_url, params: { work_flow_process_tmp: { end_condition_code: @work_flow_process_tmp.end_condition_code, fk_parent_process_id: @work_flow_process_tmp.fk_parent_process_id, is_active: @work_flow_process_tmp.is_active, name: @work_flow_process_tmp.name, start_code: @work_flow_process_tmp.start_code, start_condition_code: @work_flow_process_tmp.start_condition_code, submit_code: @work_flow_process_tmp.submit_code } }
    end

    assert_redirected_to work_flow_process_tmp_url(WorkFlowProcessTmp.last)
  end

  test "should show work_flow_process_tmp" do
    get work_flow_process_tmp_url(@work_flow_process_tmp)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_flow_process_tmp_url(@work_flow_process_tmp)
    assert_response :success
  end

  test "should update work_flow_process_tmp" do
    patch work_flow_process_tmp_url(@work_flow_process_tmp), params: { work_flow_process_tmp: { end_condition_code: @work_flow_process_tmp.end_condition_code, fk_parent_process_id: @work_flow_process_tmp.fk_parent_process_id, is_active: @work_flow_process_tmp.is_active, name: @work_flow_process_tmp.name, start_code: @work_flow_process_tmp.start_code, start_condition_code: @work_flow_process_tmp.start_condition_code, submit_code: @work_flow_process_tmp.submit_code } }
    assert_redirected_to work_flow_process_tmp_url(@work_flow_process_tmp)
  end

  test "should destroy work_flow_process_tmp" do
    assert_difference('WorkFlowProcessTmp.count', -1) do
      delete work_flow_process_tmp_url(@work_flow_process_tmp)
    end

    assert_redirected_to work_flow_process_tmps_url
  end
end
