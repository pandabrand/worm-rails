require 'test_helper'

class ImportedMaNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imported_ma_news = imported_ma_news(:one)
  end

  test "should get index" do
    get imported_ma_news_url
    assert_response :success
  end

  test "should get new" do
    get new_imported_ma_news_url
    assert_response :success
  end

  test "should create imported_ma_news" do
    assert_difference('ImportedMaNew.count') do
      post imported_ma_news_url, params: { imported_ma_news: { var_branch: @imported_ma_news.var_branch, var_city: @imported_ma_news.var_city, var_date_added: @imported_ma_news.var_date_added, var_district: @imported_ma_news.var_district, var_division: @imported_ma_news.var_division, var_email: @imported_ma_news.var_email, var_empid: @imported_ma_news.var_empid, var_firm: @imported_ma_news.var_firm, var_firstname: @imported_ma_news.var_firstname, var_jobcode: @imported_ma_news.var_jobcode, var_jobtitle: @imported_ma_news.var_jobtitle, var_lastname: @imported_ma_news.var_lastname, var_region: @imported_ma_news.var_region, var_state: @imported_ma_news.var_state, var_workaddressfull: @imported_ma_news.var_workaddressfull, var_workphone: @imported_ma_news.var_workphone, var_zip: @imported_ma_news.var_zip } }
    end

    assert_redirected_to imported_ma_news_url(ImportedMaNew.last)
  end

  test "should show imported_ma_news" do
    get imported_ma_news_url(@imported_ma_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_imported_ma_news_url(@imported_ma_news)
    assert_response :success
  end

  test "should update imported_ma_news" do
    patch imported_ma_news_url(@imported_ma_news), params: { imported_ma_news: { var_branch: @imported_ma_news.var_branch, var_city: @imported_ma_news.var_city, var_date_added: @imported_ma_news.var_date_added, var_district: @imported_ma_news.var_district, var_division: @imported_ma_news.var_division, var_email: @imported_ma_news.var_email, var_empid: @imported_ma_news.var_empid, var_firm: @imported_ma_news.var_firm, var_firstname: @imported_ma_news.var_firstname, var_jobcode: @imported_ma_news.var_jobcode, var_jobtitle: @imported_ma_news.var_jobtitle, var_lastname: @imported_ma_news.var_lastname, var_region: @imported_ma_news.var_region, var_state: @imported_ma_news.var_state, var_workaddressfull: @imported_ma_news.var_workaddressfull, var_workphone: @imported_ma_news.var_workphone, var_zip: @imported_ma_news.var_zip } }
    assert_redirected_to imported_ma_news_url(@imported_ma_news)
  end

  test "should destroy imported_ma_news" do
    assert_difference('ImportedMaNew.count', -1) do
      delete imported_ma_news_url(@imported_ma_news)
    end

    assert_redirected_to imported_ma_news_url
  end
end
