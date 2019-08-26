require 'test_helper'

class Title2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @title2 = title2s(:one)
  end

  test "should get index" do
    get title2s_url
    assert_response :success
  end

  test "should get new" do
    get new_title2_url
    assert_response :success
  end

  test "should create title2" do
    assert_difference('Title2.count') do
      post title2s_url, params: { title2: { is_active: @title2.is_active, name: @title2.name, sort_order: @title2.sort_order } }
    end

    assert_redirected_to title2_url(Title2.last)
  end

  test "should show title2" do
    get title2_url(@title2)
    assert_response :success
  end

  test "should get edit" do
    get edit_title2_url(@title2)
    assert_response :success
  end

  test "should update title2" do
    patch title2_url(@title2), params: { title2: { is_active: @title2.is_active, name: @title2.name, sort_order: @title2.sort_order } }
    assert_redirected_to title2_url(@title2)
  end

  test "should destroy title2" do
    assert_difference('Title2.count', -1) do
      delete title2_url(@title2)
    end

    assert_redirected_to title2s_url
  end
end
