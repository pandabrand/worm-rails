require "application_system_test_case"

class RegisteredComponentHtmlsTest < ApplicationSystemTestCase
  setup do
    @registered_component_html = registered_component_htmls(:one)
  end

  test "visiting the index" do
    visit registered_component_htmls_url
    assert_selector "h1", text: "Registered Component Htmls"
  end

  test "creating a Registered component html" do
    visit registered_component_htmls_url
    click_on "New Registered Component Html"

    fill_in "Date created", with: @registered_component_html.date_created
    fill_in "Date modified", with: @registered_component_html.date_modified
    fill_in "Display name", with: @registered_component_html.display_name
    fill_in "Fk component", with: @registered_component_html.fk_component_id
    fill_in "Name", with: @registered_component_html.name
    fill_in "Sort order", with: @registered_component_html.sort_order
    fill_in "Text data", with: @registered_component_html.text_data
    click_on "Create Registered component html"

    assert_text "Registered component html was successfully created"
    click_on "Back"
  end

  test "updating a Registered component html" do
    visit registered_component_htmls_url
    click_on "Edit", match: :first

    fill_in "Date created", with: @registered_component_html.date_created
    fill_in "Date modified", with: @registered_component_html.date_modified
    fill_in "Display name", with: @registered_component_html.display_name
    fill_in "Fk component", with: @registered_component_html.fk_component_id
    fill_in "Name", with: @registered_component_html.name
    fill_in "Sort order", with: @registered_component_html.sort_order
    fill_in "Text data", with: @registered_component_html.text_data
    click_on "Update Registered component html"

    assert_text "Registered component html was successfully updated"
    click_on "Back"
  end

  test "destroying a Registered component html" do
    visit registered_component_htmls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registered component html was successfully destroyed"
  end
end
