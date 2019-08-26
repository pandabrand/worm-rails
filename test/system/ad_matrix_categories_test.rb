require "application_system_test_case"

class AdMatrixCategoriesTest < ApplicationSystemTestCase
  setup do
    @ad_matrix_category = ad_matrix_categories(:one)
  end

  test "visiting the index" do
    visit ad_matrix_categories_url
    assert_selector "h1", text: "Ad Matrix Categories"
  end

  test "creating a Ad matrix category" do
    visit ad_matrix_categories_url
    click_on "New Ad Matrix Category"

    fill_in "Category name", with: @ad_matrix_category.category_name
    fill_in "Copied headline", with: @ad_matrix_category.copied_headline_id
    fill_in "Date created", with: @ad_matrix_category.date_created
    fill_in "Date embargo", with: @ad_matrix_category.date_embargo
    fill_in "Date expiration", with: @ad_matrix_category.date_expiration
    fill_in "Date modified", with: @ad_matrix_category.date_modified
    fill_in "Fk featured headline", with: @ad_matrix_category.fk_featured_headline_id
    fill_in "Fk latest template", with: @ad_matrix_category.fk_latest_template_id
    fill_in "Fk parent category", with: @ad_matrix_category.fk_parent_category_id
    fill_in "Is active", with: @ad_matrix_category.is_active
    fill_in "Level", with: @ad_matrix_category.level
    fill_in "Sort order", with: @ad_matrix_category.sort_order
    fill_in "Thumbnail unique name", with: @ad_matrix_category.thumbnail_unique_name
    fill_in "Thumbnail upload name", with: @ad_matrix_category.thumbnail_upload_name
    click_on "Create Ad matrix category"

    assert_text "Ad matrix category was successfully created"
    click_on "Back"
  end

  test "updating a Ad matrix category" do
    visit ad_matrix_categories_url
    click_on "Edit", match: :first

    fill_in "Category name", with: @ad_matrix_category.category_name
    fill_in "Copied headline", with: @ad_matrix_category.copied_headline_id
    fill_in "Date created", with: @ad_matrix_category.date_created
    fill_in "Date embargo", with: @ad_matrix_category.date_embargo
    fill_in "Date expiration", with: @ad_matrix_category.date_expiration
    fill_in "Date modified", with: @ad_matrix_category.date_modified
    fill_in "Fk featured headline", with: @ad_matrix_category.fk_featured_headline_id
    fill_in "Fk latest template", with: @ad_matrix_category.fk_latest_template_id
    fill_in "Fk parent category", with: @ad_matrix_category.fk_parent_category_id
    fill_in "Is active", with: @ad_matrix_category.is_active
    fill_in "Level", with: @ad_matrix_category.level
    fill_in "Sort order", with: @ad_matrix_category.sort_order
    fill_in "Thumbnail unique name", with: @ad_matrix_category.thumbnail_unique_name
    fill_in "Thumbnail upload name", with: @ad_matrix_category.thumbnail_upload_name
    click_on "Update Ad matrix category"

    assert_text "Ad matrix category was successfully updated"
    click_on "Back"
  end

  test "destroying a Ad matrix category" do
    visit ad_matrix_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ad matrix category was successfully destroyed"
  end
end
