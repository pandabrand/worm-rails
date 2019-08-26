require "application_system_test_case"

class CategoryToCategoriesTest < ApplicationSystemTestCase
  setup do
    @category_to_category = category_to_categories(:one)
  end

  test "visiting the index" do
    visit category_to_categories_url
    assert_selector "h1", text: "Category To Categories"
  end

  test "creating a Category to category" do
    visit category_to_categories_url
    click_on "New Category To Category"

    fill_in "Cp fk copy category", with: @category_to_category.cp_fk_copy_category_id
    fill_in "Cp fk destination category", with: @category_to_category.cp_fk_destination_category_id
    click_on "Create Category to category"

    assert_text "Category to category was successfully created"
    click_on "Back"
  end

  test "updating a Category to category" do
    visit category_to_categories_url
    click_on "Edit", match: :first

    fill_in "Cp fk copy category", with: @category_to_category.cp_fk_copy_category_id
    fill_in "Cp fk destination category", with: @category_to_category.cp_fk_destination_category_id
    click_on "Update Category to category"

    assert_text "Category to category was successfully updated"
    click_on "Back"
  end

  test "destroying a Category to category" do
    visit category_to_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category to category was successfully destroyed"
  end
end
