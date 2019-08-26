require 'test_helper'

class ImportedFaNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imported_fa_news = imported_fa_news(:one)
  end

  test "should get index" do
    get imported_fa_news_url
    assert_response :success
  end

  test "should get new" do
    get new_imported_fa_news_url
    assert_response :success
  end

  test "should create imported_fa_news" do
    assert_difference('ImportedFaNew.count') do
      post imported_fa_news_url, params: { imported_fa_news: { var_branch: @imported_fa_news.var_branch, var_city: @imported_fa_news.var_city, var_date_added: @imported_fa_news.var_date_added, var_district: @imported_fa_news.var_district, var_division: @imported_fa_news.var_division, var_email: @imported_fa_news.var_email, var_empid: @imported_fa_news.var_empid, var_firm: @imported_fa_news.var_firm, var_firstname: @imported_fa_news.var_firstname, var_jobcode: @imported_fa_news.var_jobcode, var_jobtitle: @imported_fa_news.var_jobtitle, var_lastname: @imported_fa_news.var_lastname, var_region: @imported_fa_news.var_region, var_state: @imported_fa_news.var_state, var_workaddressfull: @imported_fa_news.var_workaddressfull, var_workphone: @imported_fa_news.var_workphone, var_zip: @imported_fa_news.var_zip } }
    end

    assert_redirected_to imported_fa_news_url(ImportedFaNew.last)
  end

  test "should show imported_fa_news" do
    get imported_fa_news_url(@imported_fa_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_imported_fa_news_url(@imported_fa_news)
    assert_response :success
  end

  test "should update imported_fa_news" do
    patch imported_fa_news_url(@imported_fa_news), params: { imported_fa_news: { var_branch: @imported_fa_news.var_branch, var_city: @imported_fa_news.var_city, var_date_added: @imported_fa_news.var_date_added, var_district: @imported_fa_news.var_district, var_division: @imported_fa_news.var_division, var_email: @imported_fa_news.var_email, var_empid: @imported_fa_news.var_empid, var_firm: @imported_fa_news.var_firm, var_firstname: @imported_fa_news.var_firstname, var_jobcode: @imported_fa_news.var_jobcode, var_jobtitle: @imported_fa_news.var_jobtitle, var_lastname: @imported_fa_news.var_lastname, var_region: @imported_fa_news.var_region, var_state: @imported_fa_news.var_state, var_workaddressfull: @imported_fa_news.var_workaddressfull, var_workphone: @imported_fa_news.var_workphone, var_zip: @imported_fa_news.var_zip } }
    assert_redirected_to imported_fa_news_url(@imported_fa_news)
  end

  test "should destroy imported_fa_news" do
    assert_difference('ImportedFaNew.count', -1) do
      delete imported_fa_news_url(@imported_fa_news)
    end

    assert_redirected_to imported_fa_news_url
  end
end
