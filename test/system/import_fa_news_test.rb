require "application_system_test_case"

class ImportFaNewsTest < ApplicationSystemTestCase
  setup do
    @import_fa_news = import_fa_news(:one)
  end

  test "visiting the index" do
    visit import_fa_news_url
    assert_selector "h1", text: "Import Fa News"
  end

  test "creating a Import fa new" do
    visit import_fa_news_url
    click_on "New Import Fa New"

    fill_in "Complex", with: @import_fa_news.complex_id
    fill_in "Complex name", with: @import_fa_news.complex_name
    fill_in "Var address1", with: @import_fa_news.var_address1
    fill_in "Var address2", with: @import_fa_news.var_address2
    fill_in "Var address3", with: @import_fa_news.var_address3
    fill_in "Var branch", with: @import_fa_news.var_branch
    fill_in "Var city", with: @import_fa_news.var_city
    fill_in "Var date added", with: @import_fa_news.var_date_added
    fill_in "Var district", with: @import_fa_news.var_district
    fill_in "Var division", with: @import_fa_news.var_division
    fill_in "Var email", with: @import_fa_news.var_email
    fill_in "Var empid", with: @import_fa_news.var_empid
    fill_in "Var firm", with: @import_fa_news.var_firm
    fill_in "Var firstname", with: @import_fa_news.var_firstname
    fill_in "Var jobcode", with: @import_fa_news.var_jobcode
    fill_in "Var jobtitle", with: @import_fa_news.var_jobtitle
    fill_in "Var lastname", with: @import_fa_news.var_lastname
    fill_in "Var region", with: @import_fa_news.var_region
    fill_in "Var state", with: @import_fa_news.var_state
    fill_in "Var workaddressfull", with: @import_fa_news.var_workaddressfull
    fill_in "Var workphone", with: @import_fa_news.var_workphone
    fill_in "Var zip", with: @import_fa_news.var_zip
    click_on "Create Import fa new"

    assert_text "Import fa new was successfully created"
    click_on "Back"
  end

  test "updating a Import fa new" do
    visit import_fa_news_url
    click_on "Edit", match: :first

    fill_in "Complex", with: @import_fa_news.complex_id
    fill_in "Complex name", with: @import_fa_news.complex_name
    fill_in "Var address1", with: @import_fa_news.var_address1
    fill_in "Var address2", with: @import_fa_news.var_address2
    fill_in "Var address3", with: @import_fa_news.var_address3
    fill_in "Var branch", with: @import_fa_news.var_branch
    fill_in "Var city", with: @import_fa_news.var_city
    fill_in "Var date added", with: @import_fa_news.var_date_added
    fill_in "Var district", with: @import_fa_news.var_district
    fill_in "Var division", with: @import_fa_news.var_division
    fill_in "Var email", with: @import_fa_news.var_email
    fill_in "Var empid", with: @import_fa_news.var_empid
    fill_in "Var firm", with: @import_fa_news.var_firm
    fill_in "Var firstname", with: @import_fa_news.var_firstname
    fill_in "Var jobcode", with: @import_fa_news.var_jobcode
    fill_in "Var jobtitle", with: @import_fa_news.var_jobtitle
    fill_in "Var lastname", with: @import_fa_news.var_lastname
    fill_in "Var region", with: @import_fa_news.var_region
    fill_in "Var state", with: @import_fa_news.var_state
    fill_in "Var workaddressfull", with: @import_fa_news.var_workaddressfull
    fill_in "Var workphone", with: @import_fa_news.var_workphone
    fill_in "Var zip", with: @import_fa_news.var_zip
    click_on "Update Import fa new"

    assert_text "Import fa new was successfully updated"
    click_on "Back"
  end

  test "destroying a Import fa new" do
    visit import_fa_news_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Import fa new was successfully destroyed"
  end
end
