require "application_system_test_case"

class AdMatrixCategoryHeadlinesTest < ApplicationSystemTestCase
  setup do
    @ad_matrix_category_headline = ad_matrix_category_headlines(:one)
  end

  test "visiting the index" do
    visit ad_matrix_category_headlines_url
    assert_selector "h1", text: "Ad Matrix Category Headlines"
  end

  test "creating a Ad matrix category headline" do
    visit ad_matrix_category_headlines_url
    click_on "New Ad Matrix Category Headline"

    fill_in "Ad matrix pk", with: @ad_matrix_category_headline.ad_matrix_pk_id
    fill_in "Headline pk", with: @ad_matrix_category_headline.headline_pk_id
    click_on "Create Ad matrix category headline"

    assert_text "Ad matrix category headline was successfully created"
    click_on "Back"
  end

  test "updating a Ad matrix category headline" do
    visit ad_matrix_category_headlines_url
    click_on "Edit", match: :first

    fill_in "Ad matrix pk", with: @ad_matrix_category_headline.ad_matrix_pk_id
    fill_in "Headline pk", with: @ad_matrix_category_headline.headline_pk_id
    click_on "Update Ad matrix category headline"

    assert_text "Ad matrix category headline was successfully updated"
    click_on "Back"
  end

  test "destroying a Ad matrix category headline" do
    visit ad_matrix_category_headlines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ad matrix category headline was successfully destroyed"
  end
end
