require 'test_helper'

class ImportFinancialAdvisorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @import_financial_advisor = import_financial_advisors(:one)
  end

  test "should get index" do
    get import_financial_advisors_url
    assert_response :success
  end

  test "should get new" do
    get new_import_financial_advisor_url
    assert_response :success
  end

  test "should create import_financial_advisor" do
    assert_difference('ImportFinancialAdvisor.count') do
      post import_financial_advisors_url, params: { import_financial_advisor: { branch_id: @import_financial_advisor.branch_id, emp_id: @import_financial_advisor.emp_id, financial_advisor_id: @import_financial_advisor.financial_advisor_id, first_name: @import_financial_advisor.first_name, job_category: @import_financial_advisor.job_category, last_name: @import_financial_advisor.last_name } }
    end

    assert_redirected_to import_financial_advisor_url(ImportFinancialAdvisor.last)
  end

  test "should show import_financial_advisor" do
    get import_financial_advisor_url(@import_financial_advisor)
    assert_response :success
  end

  test "should get edit" do
    get edit_import_financial_advisor_url(@import_financial_advisor)
    assert_response :success
  end

  test "should update import_financial_advisor" do
    patch import_financial_advisor_url(@import_financial_advisor), params: { import_financial_advisor: { branch_id: @import_financial_advisor.branch_id, emp_id: @import_financial_advisor.emp_id, financial_advisor_id: @import_financial_advisor.financial_advisor_id, first_name: @import_financial_advisor.first_name, job_category: @import_financial_advisor.job_category, last_name: @import_financial_advisor.last_name } }
    assert_redirected_to import_financial_advisor_url(@import_financial_advisor)
  end

  test "should destroy import_financial_advisor" do
    assert_difference('ImportFinancialAdvisor.count', -1) do
      delete import_financial_advisor_url(@import_financial_advisor)
    end

    assert_redirected_to import_financial_advisors_url
  end
end
