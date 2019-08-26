require "application_system_test_case"

class CdgNavMenuItemsTest < ApplicationSystemTestCase
  setup do
    @cdg_nav_menu_item = cdg_nav_menu_items(:one)
  end

  test "visiting the index" do
    visit cdg_nav_menu_items_url
    assert_selector "h1", text: "Cdg Nav Menu Items"
  end

  test "creating a Cdg nav menu item" do
    visit cdg_nav_menu_items_url
    click_on "New Cdg Nav Menu Item"

    fill_in "Display image filename", with: @cdg_nav_menu_item.display_image_filename
    fill_in "Display string", with: @cdg_nav_menu_item.display_string
    fill_in "Fk parent nav menu item", with: @cdg_nav_menu_item.fk_parent_nav_menu_item_id
    fill_in "Is active", with: @cdg_nav_menu_item.is_active
    fill_in "Page name", with: @cdg_nav_menu_item.page_name
    fill_in "Sort order", with: @cdg_nav_menu_item.sort_order
    click_on "Create Cdg nav menu item"

    assert_text "Cdg nav menu item was successfully created"
    click_on "Back"
  end

  test "updating a Cdg nav menu item" do
    visit cdg_nav_menu_items_url
    click_on "Edit", match: :first

    fill_in "Display image filename", with: @cdg_nav_menu_item.display_image_filename
    fill_in "Display string", with: @cdg_nav_menu_item.display_string
    fill_in "Fk parent nav menu item", with: @cdg_nav_menu_item.fk_parent_nav_menu_item_id
    fill_in "Is active", with: @cdg_nav_menu_item.is_active
    fill_in "Page name", with: @cdg_nav_menu_item.page_name
    fill_in "Sort order", with: @cdg_nav_menu_item.sort_order
    click_on "Update Cdg nav menu item"

    assert_text "Cdg nav menu item was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg nav menu item" do
    visit cdg_nav_menu_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg nav menu item was successfully destroyed"
  end
end
