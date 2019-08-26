require "application_system_test_case"

class LabComplexesTest < ApplicationSystemTestCase
  setup do
    @lab_complex = lab_complexes(:one)
  end

  test "visiting the index" do
    visit lab_complexes_url
    assert_selector "h1", text: "Lab Complexes"
  end

  test "creating a Lab complex" do
    visit lab_complexes_url
    click_on "New Lab Complex"

    fill_in "Area name", with: @lab_complex.area_name
    fill_in "Complex", with: @lab_complex.complex_id
    fill_in "Fk area", with: @lab_complex.fk_area_id
    fill_in "Is active", with: @lab_complex.is_active
    fill_in "Name", with: @lab_complex.name
    click_on "Create Lab complex"

    assert_text "Lab complex was successfully created"
    click_on "Back"
  end

  test "updating a Lab complex" do
    visit lab_complexes_url
    click_on "Edit", match: :first

    fill_in "Area name", with: @lab_complex.area_name
    fill_in "Complex", with: @lab_complex.complex_id
    fill_in "Fk area", with: @lab_complex.fk_area_id
    fill_in "Is active", with: @lab_complex.is_active
    fill_in "Name", with: @lab_complex.name
    click_on "Update Lab complex"

    assert_text "Lab complex was successfully updated"
    click_on "Back"
  end

  test "destroying a Lab complex" do
    visit lab_complexes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lab complex was successfully destroyed"
  end
end
