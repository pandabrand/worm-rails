require 'test_helper'

class ImportFaNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @import_fa_news = import_fa_news(:one)
  end

  test "should get index" do
    get import_fa_news_url
    assert_response :success
  end

  test "should get new" do
    get new_import_fa_news_url
    assert_response :success
  end

  test "should create import_fa_news" do
    assert_difference('ImportFaNew.count') do
      post import_fa_news_url, params: { import_fa_news: { complex_id: @import_fa_news.complex_id, complex_name: @import_fa_news.complex_name, var_address1: @import_fa_news.var_address1, var_address2: @import_fa_news.var_address2, var_address3: @import_fa_news.var_address3, var_branch: @import_fa_news.var_branch, var_city: @import_fa_news.var_city, var_date_added: @import_fa_news.var_date_added, var_district: @import_fa_news.var_district, var_division: @import_fa_news.var_division, var_email: @import_fa_news.var_email, var_empid: @import_fa_news.var_empid, var_firm: @import_fa_news.var_firm, var_firstname: @import_fa_news.var_firstname, var_jobcode: @import_fa_news.var_jobcode, var_jobtitle: @import_fa_news.var_jobtitle, var_lastname: @import_fa_news.var_lastname, var_region: @import_fa_news.var_region, var_state: @import_fa_news.var_state, var_workaddressfull: @import_fa_news.var_workaddressfull, var_workphone: @import_fa_news.var_workphone, var_zip: @import_fa_news.var_zip } }
    end

    assert_redirected_to import_fa_news_url(ImportFaNew.last)
  end

  test "should show import_fa_news" do
    get import_fa_news_url(@import_fa_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_import_fa_news_url(@import_fa_news)
    assert_response :success
  end

  test "should update import_fa_news" do
    patch import_fa_news_url(@import_fa_news), params: { import_fa_news: { complex_id: @import_fa_news.complex_id, complex_name: @import_fa_news.complex_name, var_address1: @import_fa_news.var_address1, var_address2: @import_fa_news.var_address2, var_address3: @import_fa_news.var_address3, var_branch: @import_fa_news.var_branch, var_city: @import_fa_news.var_city, var_date_added: @import_fa_news.var_date_added, var_district: @import_fa_news.var_district, var_division: @import_fa_news.var_division, var_email: @import_fa_news.var_email, var_empid: @import_fa_news.var_empid, var_firm: @import_fa_news.var_firm, var_firstname: @import_fa_news.var_firstname, var_jobcode: @import_fa_news.var_jobcode, var_jobtitle: @import_fa_news.var_jobtitle, var_lastname: @import_fa_news.var_lastname, var_region: @import_fa_news.var_region, var_state: @import_fa_news.var_state, var_workaddressfull: @import_fa_news.var_workaddressfull, var_workphone: @import_fa_news.var_workphone, var_zip: @import_fa_news.var_zip } }
    assert_redirected_to import_fa_news_url(@import_fa_news)
  end

  test "should destroy import_fa_news" do
    assert_difference('ImportFaNew.count', -1) do
      delete import_fa_news_url(@import_fa_news)
    end

    assert_redirected_to import_fa_news_url
  end
end
