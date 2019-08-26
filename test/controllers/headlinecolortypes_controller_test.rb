require 'test_helper'

class HeadlinecolortypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headlinecolortype = headlinecolortypes(:one)
  end

  test "should get index" do
    get headlinecolortypes_url
    assert_response :success
  end

  test "should get new" do
    get new_headlinecolortype_url
    assert_response :success
  end

  test "should create headlinecolortype" do
    assert_difference('Headlinecolortype.count') do
      post headlinecolortypes_url, params: { headlinecolortype: { name: @headlinecolortype.name } }
    end

    assert_redirected_to headlinecolortype_url(Headlinecolortype.last)
  end

  test "should show headlinecolortype" do
    get headlinecolortype_url(@headlinecolortype)
    assert_response :success
  end

  test "should get edit" do
    get edit_headlinecolortype_url(@headlinecolortype)
    assert_response :success
  end

  test "should update headlinecolortype" do
    patch headlinecolortype_url(@headlinecolortype), params: { headlinecolortype: { name: @headlinecolortype.name } }
    assert_redirected_to headlinecolortype_url(@headlinecolortype)
  end

  test "should destroy headlinecolortype" do
    assert_difference('Headlinecolortype.count', -1) do
      delete headlinecolortype_url(@headlinecolortype)
    end

    assert_redirected_to headlinecolortypes_url
  end
end
