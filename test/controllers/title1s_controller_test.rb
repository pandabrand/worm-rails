require 'test_helper'

class Title1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @title1 = title1s(:one)
  end

  test "should get index" do
    get title1s_url
    assert_response :success
  end

  test "should get new" do
    get new_title1_url
    assert_response :success
  end

  test "should create title1" do
    assert_difference('Title1.count') do
      post title1s_url, params: { title1: { is_active: @title1.is_active, name: @title1.name, sort_order: @title1.sort_order } }
    end

    assert_redirected_to title1_url(Title1.last)
  end

  test "should show title1" do
    get title1_url(@title1)
    assert_response :success
  end

  test "should get edit" do
    get edit_title1_url(@title1)
    assert_response :success
  end

  test "should update title1" do
    patch title1_url(@title1), params: { title1: { is_active: @title1.is_active, name: @title1.name, sort_order: @title1.sort_order } }
    assert_redirected_to title1_url(@title1)
  end

  test "should destroy title1" do
    assert_difference('Title1.count', -1) do
      delete title1_url(@title1)
    end

    assert_redirected_to title1s_url
  end
end
