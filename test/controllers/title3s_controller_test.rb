require 'test_helper'

class Title3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @title3 = title3s(:one)
  end

  test "should get index" do
    get title3s_url
    assert_response :success
  end

  test "should get new" do
    get new_title3_url
    assert_response :success
  end

  test "should create title3" do
    assert_difference('Title3.count') do
      post title3s_url, params: { title3: { isActive: @title3.isActive, name: @title3.name, sort_order: @title3.sort_order } }
    end

    assert_redirected_to title3_url(Title3.last)
  end

  test "should show title3" do
    get title3_url(@title3)
    assert_response :success
  end

  test "should get edit" do
    get edit_title3_url(@title3)
    assert_response :success
  end

  test "should update title3" do
    patch title3_url(@title3), params: { title3: { isActive: @title3.isActive, name: @title3.name, sort_order: @title3.sort_order } }
    assert_redirected_to title3_url(@title3)
  end

  test "should destroy title3" do
    assert_difference('Title3.count', -1) do
      delete title3_url(@title3)
    end

    assert_redirected_to title3s_url
  end
end
