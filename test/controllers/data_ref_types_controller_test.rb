require 'test_helper'

class DataRefTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_ref_type = data_ref_types(:one)
  end

  test "should get index" do
    get data_ref_types_url
    assert_response :success
  end

  test "should get new" do
    get new_data_ref_type_url
    assert_response :success
  end

  test "should create data_ref_type" do
    assert_difference('DataRefType.count') do
      post data_ref_types_url, params: { data_ref_type: { name: @data_ref_type.name } }
    end

    assert_redirected_to data_ref_type_url(DataRefType.last)
  end

  test "should show data_ref_type" do
    get data_ref_type_url(@data_ref_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_ref_type_url(@data_ref_type)
    assert_response :success
  end

  test "should update data_ref_type" do
    patch data_ref_type_url(@data_ref_type), params: { data_ref_type: { name: @data_ref_type.name } }
    assert_redirected_to data_ref_type_url(@data_ref_type)
  end

  test "should destroy data_ref_type" do
    assert_difference('DataRefType.count', -1) do
      delete data_ref_type_url(@data_ref_type)
    end

    assert_redirected_to data_ref_types_url
  end
end
