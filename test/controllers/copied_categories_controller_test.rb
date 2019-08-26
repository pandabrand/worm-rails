require 'test_helper'

class CopiedCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @copied_category = copied_categories(:one)
  end

  test "should get index" do
    get copied_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_copied_category_url
    assert_response :success
  end

  test "should create copied_category" do
    assert_difference('CopiedCategory.count') do
      post copied_categories_url, params: { copied_category: { copied_pk_id: @copied_category.copied_pk_id, destination_pk_id: @copied_category.destination_pk_id } }
    end

    assert_redirected_to copied_category_url(CopiedCategory.last)
  end

  test "should show copied_category" do
    get copied_category_url(@copied_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_copied_category_url(@copied_category)
    assert_response :success
  end

  test "should update copied_category" do
    patch copied_category_url(@copied_category), params: { copied_category: { copied_pk_id: @copied_category.copied_pk_id, destination_pk_id: @copied_category.destination_pk_id } }
    assert_redirected_to copied_category_url(@copied_category)
  end

  test "should destroy copied_category" do
    assert_difference('CopiedCategory.count', -1) do
      delete copied_category_url(@copied_category)
    end

    assert_redirected_to copied_categories_url
  end
end
