require "application_system_test_case"

class ExcelValidParamsTest < ApplicationSystemTestCase
  setup do
    @excel_valid_param = excel_valid_params(:one)
  end

  test "visiting the index" do
    visit excel_valid_params_url
    assert_selector "h1", text: "Excel Valid Params"
  end

  test "creating a Excel valid param" do
    visit excel_valid_params_url
    click_on "New Excel Valid Param"

    fill_in "Excel col name", with: @excel_valid_param.excel_col_name
    fill_in "Excel col number", with: @excel_valid_param.excel_col_number
    fill_in "Is required", with: @excel_valid_param.is_required
    fill_in "Type", with: @excel_valid_param.type
    click_on "Create Excel valid param"

    assert_text "Excel valid param was successfully created"
    click_on "Back"
  end

  test "updating a Excel valid param" do
    visit excel_valid_params_url
    click_on "Edit", match: :first

    fill_in "Excel col name", with: @excel_valid_param.excel_col_name
    fill_in "Excel col number", with: @excel_valid_param.excel_col_number
    fill_in "Is required", with: @excel_valid_param.is_required
    fill_in "Type", with: @excel_valid_param.type
    click_on "Update Excel valid param"

    assert_text "Excel valid param was successfully updated"
    click_on "Back"
  end

  test "destroying a Excel valid param" do
    visit excel_valid_params_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Excel valid param was successfully destroyed"
  end
end
