require 'test_helper'

class ImportMaNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @import_ma_news = import_ma_news(:one)
  end

  test "should get index" do
    get import_ma_news_url
    assert_response :success
  end

  test "should get new" do
    get new_import_ma_news_url
    assert_response :success
  end

  test "should create import_ma_news" do
    assert_difference('ImportMaNew.count') do
      post import_ma_news_url, params: { import_ma_news: { complex_id: @import_ma_news.complex_id, complex_name: @import_ma_news.complex_name, var_address1: @import_ma_news.var_address1, var_address2: @import_ma_news.var_address2, var_branch: @import_ma_news.var_branch, var_city: @import_ma_news.var_city, var_date_added: @import_ma_news.var_date_added, var_district: @import_ma_news.var_district, var_division: @import_ma_news.var_division, var_email: @import_ma_news.var_email, var_empid: @import_ma_news.var_empid, var_firm: @import_ma_news.var_firm, var_firstname: @import_ma_news.var_firstname, var_jobcode: @import_ma_news.var_jobcode, var_jobtitle: @import_ma_news.var_jobtitle, var_lastname: @import_ma_news.var_lastname, var_region: @import_ma_news.var_region, var_state: @import_ma_news.var_state, var_workaddressfull: @import_ma_news.var_workaddressfull, var_workphone: @import_ma_news.var_workphone, var_zip: @import_ma_news.var_zip } }
    end

    assert_redirected_to import_ma_news_url(ImportMaNew.last)
  end

  test "should show import_ma_news" do
    get import_ma_news_url(@import_ma_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_import_ma_news_url(@import_ma_news)
    assert_response :success
  end

  test "should update import_ma_news" do
    patch import_ma_news_url(@import_ma_news), params: { import_ma_news: { complex_id: @import_ma_news.complex_id, complex_name: @import_ma_news.complex_name, var_address1: @import_ma_news.var_address1, var_address2: @import_ma_news.var_address2, var_branch: @import_ma_news.var_branch, var_city: @import_ma_news.var_city, var_date_added: @import_ma_news.var_date_added, var_district: @import_ma_news.var_district, var_division: @import_ma_news.var_division, var_email: @import_ma_news.var_email, var_empid: @import_ma_news.var_empid, var_firm: @import_ma_news.var_firm, var_firstname: @import_ma_news.var_firstname, var_jobcode: @import_ma_news.var_jobcode, var_jobtitle: @import_ma_news.var_jobtitle, var_lastname: @import_ma_news.var_lastname, var_region: @import_ma_news.var_region, var_state: @import_ma_news.var_state, var_workaddressfull: @import_ma_news.var_workaddressfull, var_workphone: @import_ma_news.var_workphone, var_zip: @import_ma_news.var_zip } }
    assert_redirected_to import_ma_news_url(@import_ma_news)
  end

  test "should destroy import_ma_news" do
    assert_difference('ImportMaNew.count', -1) do
      delete import_ma_news_url(@import_ma_news)
    end

    assert_redirected_to import_ma_news_url
  end
end
