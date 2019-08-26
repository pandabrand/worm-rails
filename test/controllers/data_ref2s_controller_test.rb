require 'test_helper'

class DataRef2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_ref2 = data_ref2s(:one)
  end

  test "should get index" do
    get data_ref2s_url
    assert_response :success
  end

  test "should get new" do
    get new_data_ref2_url
    assert_response :success
  end

  test "should create data_ref2" do
    assert_difference('DataRef2.count') do
      post data_ref2s_url, params: { data_ref2: { fk_type_id: @data_ref2.fk_type_id, type: @data_ref2.type, value: @data_ref2.value } }
    end

    assert_redirected_to data_ref2_url(DataRef2.last)
  end

  test "should show data_ref2" do
    get data_ref2_url(@data_ref2)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_ref2_url(@data_ref2)
    assert_response :success
  end

  test "should update data_ref2" do
    patch data_ref2_url(@data_ref2), params: { data_ref2: { fk_type_id: @data_ref2.fk_type_id, type: @data_ref2.type, value: @data_ref2.value } }
    assert_redirected_to data_ref2_url(@data_ref2)
  end

  test "should destroy data_ref2" do
    assert_difference('DataRef2.count', -1) do
      delete data_ref2_url(@data_ref2)
    end

    assert_redirected_to data_ref2s_url
  end
end
