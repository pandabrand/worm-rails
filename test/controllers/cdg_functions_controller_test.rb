require 'test_helper'

class CdgFunctionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_function = cdg_functions(:one)
  end

  test "should get index" do
    get cdg_functions_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_function_url
    assert_response :success
  end

  test "should create cdg_function" do
    assert_difference('CdgFunction.count') do
      post cdg_functions_url, params: { cdg_function: { name: @cdg_function.name, sort_order: @cdg_function.sort_order } }
    end

    assert_redirected_to cdg_function_url(CdgFunction.last)
  end

  test "should show cdg_function" do
    get cdg_function_url(@cdg_function)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_function_url(@cdg_function)
    assert_response :success
  end

  test "should update cdg_function" do
    patch cdg_function_url(@cdg_function), params: { cdg_function: { name: @cdg_function.name, sort_order: @cdg_function.sort_order } }
    assert_redirected_to cdg_function_url(@cdg_function)
  end

  test "should destroy cdg_function" do
    assert_difference('CdgFunction.count', -1) do
      delete cdg_function_url(@cdg_function)
    end

    assert_redirected_to cdg_functions_url
  end
end
