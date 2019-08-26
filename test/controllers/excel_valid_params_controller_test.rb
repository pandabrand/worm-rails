require 'test_helper'

class ExcelValidParamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @excel_valid_param = excel_valid_params(:one)
  end

  test "should get index" do
    get excel_valid_params_url
    assert_response :success
  end

  test "should get new" do
    get new_excel_valid_param_url
    assert_response :success
  end

  test "should create excel_valid_param" do
    assert_difference('ExcelValidParam.count') do
      post excel_valid_params_url, params: { excel_valid_param: { excel_col_name: @excel_valid_param.excel_col_name, excel_col_number: @excel_valid_param.excel_col_number, is_required: @excel_valid_param.is_required, type: @excel_valid_param.type } }
    end

    assert_redirected_to excel_valid_param_url(ExcelValidParam.last)
  end

  test "should show excel_valid_param" do
    get excel_valid_param_url(@excel_valid_param)
    assert_response :success
  end

  test "should get edit" do
    get edit_excel_valid_param_url(@excel_valid_param)
    assert_response :success
  end

  test "should update excel_valid_param" do
    patch excel_valid_param_url(@excel_valid_param), params: { excel_valid_param: { excel_col_name: @excel_valid_param.excel_col_name, excel_col_number: @excel_valid_param.excel_col_number, is_required: @excel_valid_param.is_required, type: @excel_valid_param.type } }
    assert_redirected_to excel_valid_param_url(@excel_valid_param)
  end

  test "should destroy excel_valid_param" do
    assert_difference('ExcelValidParam.count', -1) do
      delete excel_valid_param_url(@excel_valid_param)
    end

    assert_redirected_to excel_valid_params_url
  end
end
