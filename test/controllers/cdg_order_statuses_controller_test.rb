require 'test_helper'

class CdgOrderStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_order_status = cdg_order_statuses(:one)
  end

  test "should get index" do
    get cdg_order_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_order_status_url
    assert_response :success
  end

  test "should create cdg_order_status" do
    assert_difference('CdgOrderStatus.count') do
      post cdg_order_statuses_url, params: { cdg_order_status: { is_active: @cdg_order_status.is_active, name: @cdg_order_status.name, name_for_display: @cdg_order_status.name_for_display, sort_order: @cdg_order_status.sort_order } }
    end

    assert_redirected_to cdg_order_status_url(CdgOrderStatus.last)
  end

  test "should show cdg_order_status" do
    get cdg_order_status_url(@cdg_order_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_order_status_url(@cdg_order_status)
    assert_response :success
  end

  test "should update cdg_order_status" do
    patch cdg_order_status_url(@cdg_order_status), params: { cdg_order_status: { is_active: @cdg_order_status.is_active, name: @cdg_order_status.name, name_for_display: @cdg_order_status.name_for_display, sort_order: @cdg_order_status.sort_order } }
    assert_redirected_to cdg_order_status_url(@cdg_order_status)
  end

  test "should destroy cdg_order_status" do
    assert_difference('CdgOrderStatus.count', -1) do
      delete cdg_order_status_url(@cdg_order_status)
    end

    assert_redirected_to cdg_order_statuses_url
  end
end
