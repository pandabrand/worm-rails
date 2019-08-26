require "application_system_test_case"

class LabRegionsTest < ApplicationSystemTestCase
  setup do
    @lab_region = lab_regions(:one)
  end

  test "visiting the index" do
    visit lab_regions_url
    assert_selector "h1", text: "Lab Regions"
  end

  test "creating a Lab region" do
    visit lab_regions_url
    click_on "New Lab Region"

    fill_in "Is active", with: @lab_region.is_active
    fill_in "Name", with: @lab_region.name
    fill_in "Region", with: @lab_region.region_id
    fill_in "Sort order", with: @lab_region.sort_order
    click_on "Create Lab region"

    assert_text "Lab region was successfully created"
    click_on "Back"
  end

  test "updating a Lab region" do
    visit lab_regions_url
    click_on "Edit", match: :first

    fill_in "Is active", with: @lab_region.is_active
    fill_in "Name", with: @lab_region.name
    fill_in "Region", with: @lab_region.region_id
    fill_in "Sort order", with: @lab_region.sort_order
    click_on "Update Lab region"

    assert_text "Lab region was successfully updated"
    click_on "Back"
  end

  test "destroying a Lab region" do
    visit lab_regions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lab region was successfully destroyed"
  end
end
