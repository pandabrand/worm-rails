require 'test_helper'

class AdMatrixCategoryHeadlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad_matrix_category_headline = ad_matrix_category_headlines(:one)
  end

  test "should get index" do
    get ad_matrix_category_headlines_url
    assert_response :success
  end

  test "should get new" do
    get new_ad_matrix_category_headline_url
    assert_response :success
  end

  test "should create ad_matrix_category_headline" do
    assert_difference('AdMatrixCategoryHeadline.count') do
      post ad_matrix_category_headlines_url, params: { ad_matrix_category_headline: { ad_matrix_pk_id: @ad_matrix_category_headline.ad_matrix_pk_id, headline_pk_id: @ad_matrix_category_headline.headline_pk_id } }
    end

    assert_redirected_to ad_matrix_category_headline_url(AdMatrixCategoryHeadline.last)
  end

  test "should show ad_matrix_category_headline" do
    get ad_matrix_category_headline_url(@ad_matrix_category_headline)
    assert_response :success
  end

  test "should get edit" do
    get edit_ad_matrix_category_headline_url(@ad_matrix_category_headline)
    assert_response :success
  end

  test "should update ad_matrix_category_headline" do
    patch ad_matrix_category_headline_url(@ad_matrix_category_headline), params: { ad_matrix_category_headline: { ad_matrix_pk_id: @ad_matrix_category_headline.ad_matrix_pk_id, headline_pk_id: @ad_matrix_category_headline.headline_pk_id } }
    assert_redirected_to ad_matrix_category_headline_url(@ad_matrix_category_headline)
  end

  test "should destroy ad_matrix_category_headline" do
    assert_difference('AdMatrixCategoryHeadline.count', -1) do
      delete ad_matrix_category_headline_url(@ad_matrix_category_headline)
    end

    assert_redirected_to ad_matrix_category_headlines_url
  end
end
