require "application_system_test_case"

class LabHeadlinesTest < ApplicationSystemTestCase
  setup do
    @lab_headline = lab_headlines(:one)
  end

  test "visiting the index" do
    visit lab_headlines_url
    assert_selector "h1", text: "Lab Headlines"
  end

  test "creating a Lab headline" do
    visit lab_headlines_url
    click_on "New Lab Headline"

    fill_in "Code", with: @lab_headline.code
    fill_in "Fk ad matrix category", with: @lab_headline.fk_ad_matrix_category_id
    fill_in "Fk matching headline category", with: @lab_headline.fk_matching_headline_category_id
    fill_in "Fk template", with: @lab_headline.fk_template
    fill_in "Headlinecolortypeid", with: @lab_headline.headlineColorTypeID
    fill_in "Is accessible", with: @lab_headline.is_accessible
    fill_in "Is accessible text", with: @lab_headline.is_accessible_text
    fill_in "Is active", with: @lab_headline.is_active
    fill_in "Title", with: @lab_headline.title
    click_on "Create Lab headline"

    assert_text "Lab headline was successfully created"
    click_on "Back"
  end

  test "updating a Lab headline" do
    visit lab_headlines_url
    click_on "Edit", match: :first

    fill_in "Code", with: @lab_headline.code
    fill_in "Fk ad matrix category", with: @lab_headline.fk_ad_matrix_category_id
    fill_in "Fk matching headline category", with: @lab_headline.fk_matching_headline_category_id
    fill_in "Fk template", with: @lab_headline.fk_template
    fill_in "Headlinecolortypeid", with: @lab_headline.headlineColorTypeID
    fill_in "Is accessible", with: @lab_headline.is_accessible
    fill_in "Is accessible text", with: @lab_headline.is_accessible_text
    fill_in "Is active", with: @lab_headline.is_active
    fill_in "Title", with: @lab_headline.title
    click_on "Update Lab headline"

    assert_text "Lab headline was successfully updated"
    click_on "Back"
  end

  test "destroying a Lab headline" do
    visit lab_headlines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lab headline was successfully destroyed"
  end
end
