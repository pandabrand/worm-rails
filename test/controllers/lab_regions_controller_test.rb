require 'test_helper'

class LabRegionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lab_region = lab_regions(:one)
  end

  test "should get index" do
    get lab_regions_url
    assert_response :success
  end

  test "should get new" do
    get new_lab_region_url
    assert_response :success
  end

  test "should create lab_region" do
    assert_difference('LabRegion.count') do
      post lab_regions_url, params: { lab_region: { is_active: @lab_region.is_active, name: @lab_region.name, region_id: @lab_region.region_id, sort_order: @lab_region.sort_order } }
    end

    assert_redirected_to lab_region_url(LabRegion.last)
  end

  test "should show lab_region" do
    get lab_region_url(@lab_region)
    assert_response :success
  end

  test "should get edit" do
    get edit_lab_region_url(@lab_region)
    assert_response :success
  end

  test "should update lab_region" do
    patch lab_region_url(@lab_region), params: { lab_region: { is_active: @lab_region.is_active, name: @lab_region.name, region_id: @lab_region.region_id, sort_order: @lab_region.sort_order } }
    assert_redirected_to lab_region_url(@lab_region)
  end

  test "should destroy lab_region" do
    assert_difference('LabRegion.count', -1) do
      delete lab_region_url(@lab_region)
    end

    assert_redirected_to lab_regions_url
  end
end
