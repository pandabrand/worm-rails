require 'test_helper'

class TitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @title = titles(:one)
  end

  test "should get index" do
    get titles_url
    assert_response :success
  end

  test "should get new" do
    get new_title_url
    assert_response :success
  end

  test "should create title" do
    assert_difference('Title.count') do
      post titles_url, params: { title: { is_active: @title.is_active, is_title_1: @title.is_title_1, is_title_2: @title.is_title_2, is_title_3: @title.is_title_3, name: @title.name, sort_order: @title.sort_order } }
    end

    assert_redirected_to title_url(Title.last)
  end

  test "should show title" do
    get title_url(@title)
    assert_response :success
  end

  test "should get edit" do
    get edit_title_url(@title)
    assert_response :success
  end

  test "should update title" do
    patch title_url(@title), params: { title: { is_active: @title.is_active, is_title_1: @title.is_title_1, is_title_2: @title.is_title_2, is_title_3: @title.is_title_3, name: @title.name, sort_order: @title.sort_order } }
    assert_redirected_to title_url(@title)
  end

  test "should destroy title" do
    assert_difference('Title.count', -1) do
      delete title_url(@title)
    end

    assert_redirected_to titles_url
  end
end
