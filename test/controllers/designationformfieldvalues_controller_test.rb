require 'test_helper'

class DesignationformfieldvaluesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @designationformfieldvalue = designationformfieldvalues(:one)
  end

  test "should get index" do
    get designationformfieldvalues_url
    assert_response :success
  end

  test "should get new" do
    get new_designationformfieldvalue_url
    assert_response :success
  end

  test "should create designationformfieldvalue" do
    assert_difference('Designationformfieldvalue.count') do
      post designationformfieldvalues_url, params: { designationformfieldvalue: { designationPk_id: @designationformfieldvalue.designationPk_id, formFieldValuePkID: @designationformfieldvalue.formFieldValuePkID } }
    end

    assert_redirected_to designationformfieldvalue_url(Designationformfieldvalue.last)
  end

  test "should show designationformfieldvalue" do
    get designationformfieldvalue_url(@designationformfieldvalue)
    assert_response :success
  end

  test "should get edit" do
    get edit_designationformfieldvalue_url(@designationformfieldvalue)
    assert_response :success
  end

  test "should update designationformfieldvalue" do
    patch designationformfieldvalue_url(@designationformfieldvalue), params: { designationformfieldvalue: { designationPk_id: @designationformfieldvalue.designationPk_id, formFieldValuePkID: @designationformfieldvalue.formFieldValuePkID } }
    assert_redirected_to designationformfieldvalue_url(@designationformfieldvalue)
  end

  test "should destroy designationformfieldvalue" do
    assert_difference('Designationformfieldvalue.count', -1) do
      delete designationformfieldvalue_url(@designationformfieldvalue)
    end

    assert_redirected_to designationformfieldvalues_url
  end
end
