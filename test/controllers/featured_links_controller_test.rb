require 'test_helper'

class FeaturedLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @featured_link = featured_links(:one)
  end

  test "should get index" do
    get featured_links_url
    assert_response :success
  end

  test "should get new" do
    get new_featured_link_url
    assert_response :success
  end

  test "should create featured_link" do
    assert_difference('FeaturedLink.count') do
      post featured_links_url, params: { featured_link: { address: @featured_link.address, link_name: @featured_link.link_name, sort_order: @featured_link.sort_order } }
    end

    assert_redirected_to featured_link_url(FeaturedLink.last)
  end

  test "should show featured_link" do
    get featured_link_url(@featured_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_featured_link_url(@featured_link)
    assert_response :success
  end

  test "should update featured_link" do
    patch featured_link_url(@featured_link), params: { featured_link: { address: @featured_link.address, link_name: @featured_link.link_name, sort_order: @featured_link.sort_order } }
    assert_redirected_to featured_link_url(@featured_link)
  end

  test "should destroy featured_link" do
    assert_difference('FeaturedLink.count', -1) do
      delete featured_link_url(@featured_link)
    end

    assert_redirected_to featured_links_url
  end
end
