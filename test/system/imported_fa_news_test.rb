require "application_system_test_case"

class ImportedFaNewsTest < ApplicationSystemTestCase
  setup do
    @imported_fa_news = imported_fa_news(:one)
  end

  test "visiting the index" do
    visit imported_fa_news_url
    assert_selector "h1", text: "Imported Fa News"
  end

  test "creating a Imported fa new" do
    visit imported_fa_news_url
    click_on "New Imported Fa New"

    fill_in "Var branch", with: @imported_fa_news.var_branch
    fill_in "Var city", with: @imported_fa_news.var_city
    fill_in "Var date added", with: @imported_fa_news.var_date_added
    fill_in "Var district", with: @imported_fa_news.var_district
    fill_in "Var division", with: @imported_fa_news.var_division
    fill_in "Var email", with: @imported_fa_news.var_email
    fill_in "Var empid", with: @imported_fa_news.var_empid
    fill_in "Var firm", with: @imported_fa_news.var_firm
    fill_in "Var firstname", with: @imported_fa_news.var_firstname
    fill_in "Var jobcode", with: @imported_fa_news.var_jobcode
    fill_in "Var jobtitle", with: @imported_fa_news.var_jobtitle
    fill_in "Var lastname", with: @imported_fa_news.var_lastname
    fill_in "Var region", with: @imported_fa_news.var_region
    fill_in "Var state", with: @imported_fa_news.var_state
    fill_in "Var workaddressfull", with: @imported_fa_news.var_workaddressfull
    fill_in "Var workphone", with: @imported_fa_news.var_workphone
    fill_in "Var zip", with: @imported_fa_news.var_zip
    click_on "Create Imported fa new"

    assert_text "Imported fa new was successfully created"
    click_on "Back"
  end

  test "updating a Imported fa new" do
    visit imported_fa_news_url
    click_on "Edit", match: :first

    fill_in "Var branch", with: @imported_fa_news.var_branch
    fill_in "Var city", with: @imported_fa_news.var_city
    fill_in "Var date added", with: @imported_fa_news.var_date_added
    fill_in "Var district", with: @imported_fa_news.var_district
    fill_in "Var division", with: @imported_fa_news.var_division
    fill_in "Var email", with: @imported_fa_news.var_email
    fill_in "Var empid", with: @imported_fa_news.var_empid
    fill_in "Var firm", with: @imported_fa_news.var_firm
    fill_in "Var firstname", with: @imported_fa_news.var_firstname
    fill_in "Var jobcode", with: @imported_fa_news.var_jobcode
    fill_in "Var jobtitle", with: @imported_fa_news.var_jobtitle
    fill_in "Var lastname", with: @imported_fa_news.var_lastname
    fill_in "Var region", with: @imported_fa_news.var_region
    fill_in "Var state", with: @imported_fa_news.var_state
    fill_in "Var workaddressfull", with: @imported_fa_news.var_workaddressfull
    fill_in "Var workphone", with: @imported_fa_news.var_workphone
    fill_in "Var zip", with: @imported_fa_news.var_zip
    click_on "Update Imported fa new"

    assert_text "Imported fa new was successfully updated"
    click_on "Back"
  end

  test "destroying a Imported fa new" do
    visit imported_fa_news_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Imported fa new was successfully destroyed"
  end
end
