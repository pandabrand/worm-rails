require "application_system_test_case"

class LabAdSizesTest < ApplicationSystemTestCase
  setup do
    @lab_ad_size = lab_ad_sizes(:one)
  end

  test "visiting the index" do
    visit lab_ad_sizes_url
    assert_selector "h1", text: "Lab Ad Sizes"
  end

  test "creating a Lab ad size" do
    visit lab_ad_sizes_url
    click_on "New Lab Ad Size"

    fill_in "Is active", with: @lab_ad_size.is_active
    fill_in "Mediatypeid", with: @lab_ad_size.mediaTypeID
    fill_in "Size name", with: @lab_ad_size.size_name
    fill_in "Sort order", with: @lab_ad_size.sort_order
    click_on "Create Lab ad size"

    assert_text "Lab ad size was successfully created"
    click_on "Back"
  end

  test "updating a Lab ad size" do
    visit lab_ad_sizes_url
    click_on "Edit", match: :first

    fill_in "Is active", with: @lab_ad_size.is_active
    fill_in "Mediatypeid", with: @lab_ad_size.mediaTypeID
    fill_in "Size name", with: @lab_ad_size.size_name
    fill_in "Sort order", with: @lab_ad_size.sort_order
    click_on "Update Lab ad size"

    assert_text "Lab ad size was successfully updated"
    click_on "Back"
  end

  test "destroying a Lab ad size" do
    visit lab_ad_sizes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lab ad size was successfully destroyed"
  end
end
