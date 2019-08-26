require "application_system_test_case"

class RegisteredComponentsTest < ApplicationSystemTestCase
  setup do
    @registered_component = registered_components(:one)
  end

  test "visiting the index" do
    visit registered_components_url
    assert_selector "h1", text: "Registered Components"
  end

  test "creating a Registered component" do
    visit registered_components_url
    click_on "New Registered Component"

    fill_in "Admin display name", with: @registered_component.admin_display_name
    fill_in "Component name", with: @registered_component.component_name
    fill_in "Page description", with: @registered_component.page_description
    click_on "Create Registered component"

    assert_text "Registered component was successfully created"
    click_on "Back"
  end

  test "updating a Registered component" do
    visit registered_components_url
    click_on "Edit", match: :first

    fill_in "Admin display name", with: @registered_component.admin_display_name
    fill_in "Component name", with: @registered_component.component_name
    fill_in "Page description", with: @registered_component.page_description
    click_on "Update Registered component"

    assert_text "Registered component was successfully updated"
    click_on "Back"
  end

  test "destroying a Registered component" do
    visit registered_components_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registered component was successfully destroyed"
  end
end
