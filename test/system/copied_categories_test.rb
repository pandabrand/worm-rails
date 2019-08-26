require "application_system_test_case"

class CopiedCategoriesTest < ApplicationSystemTestCase
  setup do
    @copied_category = copied_categories(:one)
  end

  test "visiting the index" do
    visit copied_categories_url
    assert_selector "h1", text: "Copied Categories"
  end

  test "creating a Copied category" do
    visit copied_categories_url
    click_on "New Copied Category"

    fill_in "Copied pk", with: @copied_category.copied_pk_id
    fill_in "Destination pk", with: @copied_category.destination_pk_id
    click_on "Create Copied category"

    assert_text "Copied category was successfully created"
    click_on "Back"
  end

  test "updating a Copied category" do
    visit copied_categories_url
    click_on "Edit", match: :first

    fill_in "Copied pk", with: @copied_category.copied_pk_id
    fill_in "Destination pk", with: @copied_category.destination_pk_id
    click_on "Update Copied category"

    assert_text "Copied category was successfully updated"
    click_on "Back"
  end

  test "destroying a Copied category" do
    visit copied_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Copied category was successfully destroyed"
  end
end
