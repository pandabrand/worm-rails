require 'test_helper'

class ApprovalDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @approval_detail = approval_details(:one)
  end

  test "should get index" do
    get approval_details_url
    assert_response :success
  end

  test "should get new" do
    get new_approval_detail_url
    assert_response :success
  end

  test "should create approval_detail" do
    assert_difference('ApprovalDetail.count') do
      post approval_details_url, params: { approval_detail: { comments: @approval_detail.comments, date_created: @approval_detail.date_created, fk_assistant_id: @approval_detail.fk_assistant_id, fk_order_id: @approval_detail.fk_order_id, fk_order_item_id: @approval_detail.fk_order_item_id, fk_role_id: @approval_detail.fk_role_id, fk_user_id: @approval_detail.fk_user_id, fk_work_activity_instance_id: @approval_detail.fk_work_activity_instance_id, media_id: @approval_detail.media_id, order_number: @approval_detail.order_number, status_description: @approval_detail.status_description, user_name: @approval_detail.user_name, user_role: @approval_detail.user_role } }
    end

    assert_redirected_to approval_detail_url(ApprovalDetail.last)
  end

  test "should show approval_detail" do
    get approval_detail_url(@approval_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_approval_detail_url(@approval_detail)
    assert_response :success
  end

  test "should update approval_detail" do
    patch approval_detail_url(@approval_detail), params: { approval_detail: { comments: @approval_detail.comments, date_created: @approval_detail.date_created, fk_assistant_id: @approval_detail.fk_assistant_id, fk_order_id: @approval_detail.fk_order_id, fk_order_item_id: @approval_detail.fk_order_item_id, fk_role_id: @approval_detail.fk_role_id, fk_user_id: @approval_detail.fk_user_id, fk_work_activity_instance_id: @approval_detail.fk_work_activity_instance_id, media_id: @approval_detail.media_id, order_number: @approval_detail.order_number, status_description: @approval_detail.status_description, user_name: @approval_detail.user_name, user_role: @approval_detail.user_role } }
    assert_redirected_to approval_detail_url(@approval_detail)
  end

  test "should destroy approval_detail" do
    assert_difference('ApprovalDetail.count', -1) do
      delete approval_detail_url(@approval_detail)
    end

    assert_redirected_to approval_details_url
  end
end
