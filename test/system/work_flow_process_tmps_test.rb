require "application_system_test_case"

class WorkFlowProcessTmpsTest < ApplicationSystemTestCase
  setup do
    @work_flow_process_tmp = work_flow_process_tmps(:one)
  end

  test "visiting the index" do
    visit work_flow_process_tmps_url
    assert_selector "h1", text: "Work Flow Process Tmps"
  end

  test "creating a Work flow process tmp" do
    visit work_flow_process_tmps_url
    click_on "New Work Flow Process Tmp"

    fill_in "End condition code", with: @work_flow_process_tmp.end_condition_code
    fill_in "Fk parent process", with: @work_flow_process_tmp.fk_parent_process_id
    fill_in "Is active", with: @work_flow_process_tmp.is_active
    fill_in "Name", with: @work_flow_process_tmp.name
    fill_in "Start code", with: @work_flow_process_tmp.start_code
    fill_in "Start condition code", with: @work_flow_process_tmp.start_condition_code
    fill_in "Submit code", with: @work_flow_process_tmp.submit_code
    click_on "Create Work flow process tmp"

    assert_text "Work flow process tmp was successfully created"
    click_on "Back"
  end

  test "updating a Work flow process tmp" do
    visit work_flow_process_tmps_url
    click_on "Edit", match: :first

    fill_in "End condition code", with: @work_flow_process_tmp.end_condition_code
    fill_in "Fk parent process", with: @work_flow_process_tmp.fk_parent_process_id
    fill_in "Is active", with: @work_flow_process_tmp.is_active
    fill_in "Name", with: @work_flow_process_tmp.name
    fill_in "Start code", with: @work_flow_process_tmp.start_code
    fill_in "Start condition code", with: @work_flow_process_tmp.start_condition_code
    fill_in "Submit code", with: @work_flow_process_tmp.submit_code
    click_on "Update Work flow process tmp"

    assert_text "Work flow process tmp was successfully updated"
    click_on "Back"
  end

  test "destroying a Work flow process tmp" do
    visit work_flow_process_tmps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work flow process tmp was successfully destroyed"
  end
end
