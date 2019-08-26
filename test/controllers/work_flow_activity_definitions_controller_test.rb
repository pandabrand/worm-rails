require 'test_helper'

class WorkFlowActivityDefinitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_flow_activity_definition = work_flow_activity_definitions(:one)
  end

  test "should get index" do
    get work_flow_activity_definitions_url
    assert_response :success
  end

  test "should get new" do
    get new_work_flow_activity_definition_url
    assert_response :success
  end

  test "should create work_flow_activity_definition" do
    assert_difference('WorkFlowActivityDefinition.count') do
      post work_flow_activity_definitions_url, params: { work_flow_activity_definition: { WorkFlowActivityDefinition: @work_flow_activity_definition.WorkFlowActivityDefinition, WorkFlowActon_code: @work_flow_activity_definition.WorkFlowActon_code, activicafrails: @work_flow_activity_definition.activicafrails, activity_cod: @work_flow_activity_definition.activity_cod, activity_code_temrail_initialization_code: @work_flow_activity_definition.activity_code_temrail_initialization_code, activity_code_temrails: @work_flow_activity_definition.activity_code_temrails, activity_code_temraiyInstance: @work_flow_activity_definition.activity_code_temraiyInstance, actrails: @work_flow_activity_definition.actrails, fk_next_activity_id: @work_flow_activity_definition.fk_next_activity_id, fk_order: @work_flow_activity_definition.fk_order, fk_parent_process_id: @work_flow_activity_definition.fk_parent_process_id, generate: @work_flow_activity_definition.generate, genere: @work_flow_activity_definition.genere, generringrails: @work_flow_activity_definition.generringrails, genityrails: @work_flow_activity_definition.genityrails, is_cancellerails: @work_flow_activity_definition.is_cancellerails, scaffold: @work_flow_activity_definition.scaffold, submit_code: @work_flow_activity_definition.submit_code } }
    end

    assert_redirected_to work_flow_activity_definition_url(WorkFlowActivityDefinition.last)
  end

  test "should show work_flow_activity_definition" do
    get work_flow_activity_definition_url(@work_flow_activity_definition)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_flow_activity_definition_url(@work_flow_activity_definition)
    assert_response :success
  end

  test "should update work_flow_activity_definition" do
    patch work_flow_activity_definition_url(@work_flow_activity_definition), params: { work_flow_activity_definition: { WorkFlowActivityDefinition: @work_flow_activity_definition.WorkFlowActivityDefinition, WorkFlowActon_code: @work_flow_activity_definition.WorkFlowActon_code, activicafrails: @work_flow_activity_definition.activicafrails, activity_cod: @work_flow_activity_definition.activity_cod, activity_code_temrail_initialization_code: @work_flow_activity_definition.activity_code_temrail_initialization_code, activity_code_temrails: @work_flow_activity_definition.activity_code_temrails, activity_code_temraiyInstance: @work_flow_activity_definition.activity_code_temraiyInstance, actrails: @work_flow_activity_definition.actrails, fk_next_activity_id: @work_flow_activity_definition.fk_next_activity_id, fk_order: @work_flow_activity_definition.fk_order, fk_parent_process_id: @work_flow_activity_definition.fk_parent_process_id, generate: @work_flow_activity_definition.generate, genere: @work_flow_activity_definition.genere, generringrails: @work_flow_activity_definition.generringrails, genityrails: @work_flow_activity_definition.genityrails, is_cancellerails: @work_flow_activity_definition.is_cancellerails, scaffold: @work_flow_activity_definition.scaffold, submit_code: @work_flow_activity_definition.submit_code } }
    assert_redirected_to work_flow_activity_definition_url(@work_flow_activity_definition)
  end

  test "should destroy work_flow_activity_definition" do
    assert_difference('WorkFlowActivityDefinition.count', -1) do
      delete work_flow_activity_definition_url(@work_flow_activity_definition)
    end

    assert_redirected_to work_flow_activity_definitions_url
  end
end
