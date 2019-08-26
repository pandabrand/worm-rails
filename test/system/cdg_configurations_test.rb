require "application_system_test_case"

class CdgConfigurationsTest < ApplicationSystemTestCase
  setup do
    @cdg_configuration = cdg_configurations(:one)
  end

  test "visiting the index" do
    visit cdg_configurations_url
    assert_selector "h1", text: "Cdg Configurations"
  end

  test "creating a Cdg configuration" do
    visit cdg_configurations_url
    click_on "New Cdg Configuration"

    fill_in "Is default", with: @cdg_configuration.is_default
    fill_in "Name", with: @cdg_configuration.name
    fill_in "Value", with: @cdg_configuration.value
    click_on "Create Cdg configuration"

    assert_text "Cdg configuration was successfully created"
    click_on "Back"
  end

  test "updating a Cdg configuration" do
    visit cdg_configurations_url
    click_on "Edit", match: :first

    fill_in "Is default", with: @cdg_configuration.is_default
    fill_in "Name", with: @cdg_configuration.name
    fill_in "Value", with: @cdg_configuration.value
    click_on "Update Cdg configuration"

    assert_text "Cdg configuration was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg configuration" do
    visit cdg_configurations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg configuration was successfully destroyed"
  end
end
