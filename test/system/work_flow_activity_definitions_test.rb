require "application_system_test_case"

class WorkFlowActivityDefinitionsTest < ApplicationSystemTestCase
  setup do
    @work_flow_activity_definition = work_flow_activity_definitions(:one)
  end

  test "visiting the index" do
    visit work_flow_activity_definitions_url
    assert_selector "h1", text: "Work Flow Activity Definitions"
  end

  test "creating a Work flow activity definition" do
    visit work_flow_activity_definitions_url
    click_on "New Work Flow Activity Definition"

    fill_in "Workflowactivitydefinition", with: @work_flow_activity_definition.WorkFlowActivityDefinition
    fill_in "Workflowacton code", with: @work_flow_activity_definition.WorkFlowActon_code
    fill_in "Activicafrails", with: @work_flow_activity_definition.activicafrails
    fill_in "Activity cod", with: @work_flow_activity_definition.activity_cod
    fill_in "Activity code temrail initialization code", with: @work_flow_activity_definition.activity_code_temrail_initialization_code
    fill_in "Activity code temrails", with: @work_flow_activity_definition.activity_code_temrails
    fill_in "Activity code temraiyinstance", with: @work_flow_activity_definition.activity_code_temraiyInstance
    fill_in "Actrails", with: @work_flow_activity_definition.actrails
    fill_in "Fk next activity", with: @work_flow_activity_definition.fk_next_activity_id
    fill_in "Fk order", with: @work_flow_activity_definition.fk_order
    fill_in "Fk parent process", with: @work_flow_activity_definition.fk_parent_process_id
    fill_in "Generate", with: @work_flow_activity_definition.generate
    fill_in "Genere", with: @work_flow_activity_definition.genere
    fill_in "Generringrails", with: @work_flow_activity_definition.generringrails
    fill_in "Genityrails", with: @work_flow_activity_definition.genityrails
    fill_in "Is cancellerails", with: @work_flow_activity_definition.is_cancellerails
    fill_in "Scaffold", with: @work_flow_activity_definition.scaffold
    fill_in "Submit code", with: @work_flow_activity_definition.submit_code
    click_on "Create Work flow activity definition"

    assert_text "Work flow activity definition was successfully created"
    click_on "Back"
  end

  test "updating a Work flow activity definition" do
    visit work_flow_activity_definitions_url
    click_on "Edit", match: :first

    fill_in "Workflowactivitydefinition", with: @work_flow_activity_definition.WorkFlowActivityDefinition
    fill_in "Workflowacton code", with: @work_flow_activity_definition.WorkFlowActon_code
    fill_in "Activicafrails", with: @work_flow_activity_definition.activicafrails
    fill_in "Activity cod", with: @work_flow_activity_definition.activity_cod
    fill_in "Activity code temrail initialization code", with: @work_flow_activity_definition.activity_code_temrail_initialization_code
    fill_in "Activity code temrails", with: @work_flow_activity_definition.activity_code_temrails
    fill_in "Activity code temraiyinstance", with: @work_flow_activity_definition.activity_code_temraiyInstance
    fill_in "Actrails", with: @work_flow_activity_definition.actrails
    fill_in "Fk next activity", with: @work_flow_activity_definition.fk_next_activity_id
    fill_in "Fk order", with: @work_flow_activity_definition.fk_order
    fill_in "Fk parent process", with: @work_flow_activity_definition.fk_parent_process_id
    fill_in "Generate", with: @work_flow_activity_definition.generate
    fill_in "Genere", with: @work_flow_activity_definition.genere
    fill_in "Generringrails", with: @work_flow_activity_definition.generringrails
    fill_in "Genityrails", with: @work_flow_activity_definition.genityrails
    fill_in "Is cancellerails", with: @work_flow_activity_definition.is_cancellerails
    fill_in "Scaffold", with: @work_flow_activity_definition.scaffold
    fill_in "Submit code", with: @work_flow_activity_definition.submit_code
    click_on "Update Work flow activity definition"

    assert_text "Work flow activity definition was successfully updated"
    click_on "Back"
  end

  test "destroying a Work flow activity definition" do
    visit work_flow_activity_definitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work flow activity definition was successfully destroyed"
  end
end
