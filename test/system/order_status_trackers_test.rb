require "application_system_test_case"

class OrderStatusTrackersTest < ApplicationSystemTestCase
  setup do
    @order_status_tracker = order_status_trackers(:one)
  end

  test "visiting the index" do
    visit order_status_trackers_url
    assert_selector "h1", text: "Order Status Trackers"
  end

  test "creating a Order status tracker" do
    visit order_status_trackers_url
    click_on "New Order Status Tracker"

    fill_in "Date submitted", with: @order_status_tracker.date_submitted
    fill_in "Fk order", with: @order_status_tracker.fk_order_id
    fill_in "Fk order status", with: @order_status_tracker.fk_order_status_id
    click_on "Create Order status tracker"

    assert_text "Order status tracker was successfully created"
    click_on "Back"
  end

  test "updating a Order status tracker" do
    visit order_status_trackers_url
    click_on "Edit", match: :first

    fill_in "Date submitted", with: @order_status_tracker.date_submitted
    fill_in "Fk order", with: @order_status_tracker.fk_order_id
    fill_in "Fk order status", with: @order_status_tracker.fk_order_status_id
    click_on "Update Order status tracker"

    assert_text "Order status tracker was successfully updated"
    click_on "Back"
  end

  test "destroying a Order status tracker" do
    visit order_status_trackers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order status tracker was successfully destroyed"
  end
end
