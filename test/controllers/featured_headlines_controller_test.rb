require 'test_helper'

class FeaturedHeadlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @featured_headline = featured_headlines(:one)
  end

  test "should get index" do
    get featured_headlines_url
    assert_response :success
  end

  test "should get new" do
    get new_featured_headline_url
    assert_response :success
  end

  test "should create featured_headline" do
    assert_difference('FeaturedHeadline.count') do
      post featured_headlines_url, params: { featured_headline: { fk_headline_id: @featured_headline.fk_headline_id, headline_sort_order: @featured_headline.headline_sort_order, tag_line: @featured_headline.tag_line } }
    end

    assert_redirected_to featured_headline_url(FeaturedHeadline.last)
  end

  test "should show featured_headline" do
    get featured_headline_url(@featured_headline)
    assert_response :success
  end

  test "should get edit" do
    get edit_featured_headline_url(@featured_headline)
    assert_response :success
  end

  test "should update featured_headline" do
    patch featured_headline_url(@featured_headline), params: { featured_headline: { fk_headline_id: @featured_headline.fk_headline_id, headline_sort_order: @featured_headline.headline_sort_order, tag_line: @featured_headline.tag_line } }
    assert_redirected_to featured_headline_url(@featured_headline)
  end

  test "should destroy featured_headline" do
    assert_difference('FeaturedHeadline.count', -1) do
      delete featured_headline_url(@featured_headline)
    end

    assert_redirected_to featured_headlines_url
  end
end
