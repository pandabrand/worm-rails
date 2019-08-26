require "application_system_test_case"

class ImportFinancialAdvisorsTest < ApplicationSystemTestCase
  setup do
    @import_financial_advisor = import_financial_advisors(:one)
  end

  test "visiting the index" do
    visit import_financial_advisors_url
    assert_selector "h1", text: "Import Financial Advisors"
  end

  test "creating a Import financial advisor" do
    visit import_financial_advisors_url
    click_on "New Import Financial Advisor"

    fill_in "Branch", with: @import_financial_advisor.branch_id
    fill_in "Emp", with: @import_financial_advisor.emp_id
    fill_in "Financial advisor", with: @import_financial_advisor.financial_advisor_id
    fill_in "First name", with: @import_financial_advisor.first_name
    fill_in "Job category", with: @import_financial_advisor.job_category
    fill_in "Last name", with: @import_financial_advisor.last_name
    click_on "Create Import financial advisor"

    assert_text "Import financial advisor was successfully created"
    click_on "Back"
  end

  test "updating a Import financial advisor" do
    visit import_financial_advisors_url
    click_on "Edit", match: :first

    fill_in "Branch", with: @import_financial_advisor.branch_id
    fill_in "Emp", with: @import_financial_advisor.emp_id
    fill_in "Financial advisor", with: @import_financial_advisor.financial_advisor_id
    fill_in "First name", with: @import_financial_advisor.first_name
    fill_in "Job category", with: @import_financial_advisor.job_category
    fill_in "Last name", with: @import_financial_advisor.last_name
    click_on "Update Import financial advisor"

    assert_text "Import financial advisor was successfully updated"
    click_on "Back"
  end

  test "destroying a Import financial advisor" do
    visit import_financial_advisors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Import financial advisor was successfully destroyed"
  end
end
