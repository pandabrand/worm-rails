require 'test_helper'

class LabAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lab_area = lab_areas(:one)
  end

  test "should get index" do
    get lab_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_lab_area_url
    assert_response :success
  end

  test "should create lab_area" do
    assert_difference('LabArea.count') do
      post lab_areas_url, params: { lab_area: { area_number: @lab_area.area_number, fk_region_id: @lab_area.fk_region_id, is_active: @lab_area.is_active, name: @lab_area.name, sort_order: @lab_area.sort_order } }
    end

    assert_redirected_to lab_area_url(LabArea.last)
  end

  test "should show lab_area" do
    get lab_area_url(@lab_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_lab_area_url(@lab_area)
    assert_response :success
  end

  test "should update lab_area" do
    patch lab_area_url(@lab_area), params: { lab_area: { area_number: @lab_area.area_number, fk_region_id: @lab_area.fk_region_id, is_active: @lab_area.is_active, name: @lab_area.name, sort_order: @lab_area.sort_order } }
    assert_redirected_to lab_area_url(@lab_area)
  end

  test "should destroy lab_area" do
    assert_difference('LabArea.count', -1) do
      delete lab_area_url(@lab_area)
    end

    assert_redirected_to lab_areas_url
  end
end
