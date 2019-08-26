require 'test_helper'

class CategoryToCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_to_category = category_to_categories(:one)
  end

  test "should get index" do
    get category_to_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_category_to_category_url
    assert_response :success
  end

  test "should create category_to_category" do
    assert_difference('CategoryToCategory.count') do
      post category_to_categories_url, params: { category_to_category: { cp_fk_copy_category_id: @category_to_category.cp_fk_copy_category_id, cp_fk_destination_category_id: @category_to_category.cp_fk_destination_category_id } }
    end

    assert_redirected_to category_to_category_url(CategoryToCategory.last)
  end

  test "should show category_to_category" do
    get category_to_category_url(@category_to_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_to_category_url(@category_to_category)
    assert_response :success
  end

  test "should update category_to_category" do
    patch category_to_category_url(@category_to_category), params: { category_to_category: { cp_fk_copy_category_id: @category_to_category.cp_fk_copy_category_id, cp_fk_destination_category_id: @category_to_category.cp_fk_destination_category_id } }
    assert_redirected_to category_to_category_url(@category_to_category)
  end

  test "should destroy category_to_category" do
    assert_difference('CategoryToCategory.count', -1) do
      delete category_to_category_url(@category_to_category)
    end

    assert_redirected_to category_to_categories_url
  end
end
