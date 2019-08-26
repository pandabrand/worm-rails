require "application_system_test_case"

class CdgOrderStatusesTest < ApplicationSystemTestCase
  setup do
    @cdg_order_status = cdg_order_statuses(:one)
  end

  test "visiting the index" do
    visit cdg_order_statuses_url
    assert_selector "h1", text: "Cdg Order Statuses"
  end

  test "creating a Cdg order status" do
    visit cdg_order_statuses_url
    click_on "New Cdg Order Status"

    fill_in "Is active", with: @cdg_order_status.is_active
    fill_in "Name", with: @cdg_order_status.name
    fill_in "Name for display", with: @cdg_order_status.name_for_display
    fill_in "Sort order", with: @cdg_order_status.sort_order
    click_on "Create Cdg order status"

    assert_text "Cdg order status was successfully created"
    click_on "Back"
  end

  test "updating a Cdg order status" do
    visit cdg_order_statuses_url
    click_on "Edit", match: :first

    fill_in "Is active", with: @cdg_order_status.is_active
    fill_in "Name", with: @cdg_order_status.name
    fill_in "Name for display", with: @cdg_order_status.name_for_display
    fill_in "Sort order", with: @cdg_order_status.sort_order
    click_on "Update Cdg order status"

    assert_text "Cdg order status was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg order status" do
    visit cdg_order_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg order status was successfully destroyed"
  end
end
