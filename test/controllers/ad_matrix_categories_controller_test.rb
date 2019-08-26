require 'test_helper'

class AdMatrixCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad_matrix_category = ad_matrix_categories(:one)
  end

  test "should get index" do
    get ad_matrix_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_ad_matrix_category_url
    assert_response :success
  end

  test "should create ad_matrix_category" do
    assert_difference('AdMatrixCategory.count') do
      post ad_matrix_categories_url, params: { ad_matrix_category: { category_name: @ad_matrix_category.category_name, copied_headline_id: @ad_matrix_category.copied_headline_id, date_created: @ad_matrix_category.date_created, date_embargo: @ad_matrix_category.date_embargo, date_expiration: @ad_matrix_category.date_expiration, date_modified: @ad_matrix_category.date_modified, fk_featured_headline_id: @ad_matrix_category.fk_featured_headline_id, fk_latest_template_id: @ad_matrix_category.fk_latest_template_id, fk_parent_category_id: @ad_matrix_category.fk_parent_category_id, is_active: @ad_matrix_category.is_active, level: @ad_matrix_category.level, sort_order: @ad_matrix_category.sort_order, thumbnail_unique_name: @ad_matrix_category.thumbnail_unique_name, thumbnail_upload_name: @ad_matrix_category.thumbnail_upload_name } }
    end

    assert_redirected_to ad_matrix_category_url(AdMatrixCategory.last)
  end

  test "should show ad_matrix_category" do
    get ad_matrix_category_url(@ad_matrix_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_ad_matrix_category_url(@ad_matrix_category)
    assert_response :success
  end

  test "should update ad_matrix_category" do
    patch ad_matrix_category_url(@ad_matrix_category), params: { ad_matrix_category: { category_name: @ad_matrix_category.category_name, copied_headline_id: @ad_matrix_category.copied_headline_id, date_created: @ad_matrix_category.date_created, date_embargo: @ad_matrix_category.date_embargo, date_expiration: @ad_matrix_category.date_expiration, date_modified: @ad_matrix_category.date_modified, fk_featured_headline_id: @ad_matrix_category.fk_featured_headline_id, fk_latest_template_id: @ad_matrix_category.fk_latest_template_id, fk_parent_category_id: @ad_matrix_category.fk_parent_category_id, is_active: @ad_matrix_category.is_active, level: @ad_matrix_category.level, sort_order: @ad_matrix_category.sort_order, thumbnail_unique_name: @ad_matrix_category.thumbnail_unique_name, thumbnail_upload_name: @ad_matrix_category.thumbnail_upload_name } }
    assert_redirected_to ad_matrix_category_url(@ad_matrix_category)
  end

  test "should destroy ad_matrix_category" do
    assert_difference('AdMatrixCategory.count', -1) do
      delete ad_matrix_category_url(@ad_matrix_category)
    end

    assert_redirected_to ad_matrix_categories_url
  end
end
