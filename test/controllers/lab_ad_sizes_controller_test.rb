require 'test_helper'

class LabAdSizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lab_ad_size = lab_ad_sizes(:one)
  end

  test "should get index" do
    get lab_ad_sizes_url
    assert_response :success
  end

  test "should get new" do
    get new_lab_ad_size_url
    assert_response :success
  end

  test "should create lab_ad_size" do
    assert_difference('LabAdSize.count') do
      post lab_ad_sizes_url, params: { lab_ad_size: { is_active: @lab_ad_size.is_active, mediaTypeID: @lab_ad_size.mediaTypeID, size_name: @lab_ad_size.size_name, sort_order: @lab_ad_size.sort_order } }
    end

    assert_redirected_to lab_ad_size_url(LabAdSize.last)
  end

  test "should show lab_ad_size" do
    get lab_ad_size_url(@lab_ad_size)
    assert_response :success
  end

  test "should get edit" do
    get edit_lab_ad_size_url(@lab_ad_size)
    assert_response :success
  end

  test "should update lab_ad_size" do
    patch lab_ad_size_url(@lab_ad_size), params: { lab_ad_size: { is_active: @lab_ad_size.is_active, mediaTypeID: @lab_ad_size.mediaTypeID, size_name: @lab_ad_size.size_name, sort_order: @lab_ad_size.sort_order } }
    assert_redirected_to lab_ad_size_url(@lab_ad_size)
  end

  test "should destroy lab_ad_size" do
    assert_difference('LabAdSize.count', -1) do
      delete lab_ad_size_url(@lab_ad_size)
    end

    assert_redirected_to lab_ad_sizes_url
  end
end
