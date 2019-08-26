require 'test_helper'

class DataRefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_ref = data_refs(:one)
  end

  test "should get index" do
    get data_refs_url
    assert_response :success
  end

  test "should get new" do
    get new_data_ref_url
    assert_response :success
  end

  test "should create data_ref" do
    assert_difference('DataRef.count') do
      post data_refs_url, params: { data_ref: { fk_type_id: @data_ref.fk_type_id, type: @data_ref.type, value: @data_ref.value } }
    end

    assert_redirected_to data_ref_url(DataRef.last)
  end

  test "should show data_ref" do
    get data_ref_url(@data_ref)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_ref_url(@data_ref)
    assert_response :success
  end

  test "should update data_ref" do
    patch data_ref_url(@data_ref), params: { data_ref: { fk_type_id: @data_ref.fk_type_id, type: @data_ref.type, value: @data_ref.value } }
    assert_redirected_to data_ref_url(@data_ref)
  end

  test "should destroy data_ref" do
    assert_difference('DataRef.count', -1) do
      delete data_ref_url(@data_ref)
    end

    assert_redirected_to data_refs_url
  end
end
