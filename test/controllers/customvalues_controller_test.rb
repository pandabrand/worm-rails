require 'test_helper'

class CustomvaluesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customvalue = customvalues(:one)
  end

  test "should get index" do
    get customvalues_url
    assert_response :success
  end

  test "should get new" do
    get new_customvalue_url
    assert_response :success
  end

  test "should create customvalue" do
    assert_difference('Customvalue.count') do
      post customvalues_url, params: { customvalue: { name: @customvalue.name, templateFormFieldID: @customvalue.templateFormFieldID, value: @customvalue.value } }
    end

    assert_redirected_to customvalue_url(Customvalue.last)
  end

  test "should show customvalue" do
    get customvalue_url(@customvalue)
    assert_response :success
  end

  test "should get edit" do
    get edit_customvalue_url(@customvalue)
    assert_response :success
  end

  test "should update customvalue" do
    patch customvalue_url(@customvalue), params: { customvalue: { name: @customvalue.name, templateFormFieldID: @customvalue.templateFormFieldID, value: @customvalue.value } }
    assert_redirected_to customvalue_url(@customvalue)
  end

  test "should destroy customvalue" do
    assert_difference('Customvalue.count', -1) do
      delete customvalue_url(@customvalue)
    end

    assert_redirected_to customvalues_url
  end
end
