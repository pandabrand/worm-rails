require 'test_helper'

class OrderStatusTrackersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_status_tracker = order_status_trackers(:one)
  end

  test "should get index" do
    get order_status_trackers_url
    assert_response :success
  end

  test "should get new" do
    get new_order_status_tracker_url
    assert_response :success
  end

  test "should create order_status_tracker" do
    assert_difference('OrderStatusTracker.count') do
      post order_status_trackers_url, params: { order_status_tracker: { date_submitted: @order_status_tracker.date_submitted, fk_order_id: @order_status_tracker.fk_order_id, fk_order_status_id: @order_status_tracker.fk_order_status_id } }
    end

    assert_redirected_to order_status_tracker_url(OrderStatusTracker.last)
  end

  test "should show order_status_tracker" do
    get order_status_tracker_url(@order_status_tracker)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_status_tracker_url(@order_status_tracker)
    assert_response :success
  end

  test "should update order_status_tracker" do
    patch order_status_tracker_url(@order_status_tracker), params: { order_status_tracker: { date_submitted: @order_status_tracker.date_submitted, fk_order_id: @order_status_tracker.fk_order_id, fk_order_status_id: @order_status_tracker.fk_order_status_id } }
    assert_redirected_to order_status_tracker_url(@order_status_tracker)
  end

  test "should destroy order_status_tracker" do
    assert_difference('OrderStatusTracker.count', -1) do
      delete order_status_tracker_url(@order_status_tracker)
    end

    assert_redirected_to order_status_trackers_url
  end
end
