require "application_system_test_case"

class LabAreasTest < ApplicationSystemTestCase
  setup do
    @lab_area = lab_areas(:one)
  end

  test "visiting the index" do
    visit lab_areas_url
    assert_selector "h1", text: "Lab Areas"
  end

  test "creating a Lab area" do
    visit lab_areas_url
    click_on "New Lab Area"

    fill_in "Area number", with: @lab_area.area_number
    fill_in "Fk region", with: @lab_area.fk_region_id
    fill_in "Is active", with: @lab_area.is_active
    fill_in "Name", with: @lab_area.name
    fill_in "Sort order", with: @lab_area.sort_order
    click_on "Create Lab area"

    assert_text "Lab area was successfully created"
    click_on "Back"
  end

  test "updating a Lab area" do
    visit lab_areas_url
    click_on "Edit", match: :first

    fill_in "Area number", with: @lab_area.area_number
    fill_in "Fk region", with: @lab_area.fk_region_id
    fill_in "Is active", with: @lab_area.is_active
    fill_in "Name", with: @lab_area.name
    fill_in "Sort order", with: @lab_area.sort_order
    click_on "Update Lab area"

    assert_text "Lab area was successfully updated"
    click_on "Back"
  end

  test "destroying a Lab area" do
    visit lab_areas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lab area was successfully destroyed"
  end
end
