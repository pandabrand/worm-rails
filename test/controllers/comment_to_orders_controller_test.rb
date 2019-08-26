require 'test_helper'

class CommentToOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_to_order = comment_to_orders(:one)
  end

  test "should get index" do
    get comment_to_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_to_order_url
    assert_response :success
  end

  test "should create comment_to_order" do
    assert_difference('CommentToOrder.count') do
      post comment_to_orders_url, params: { comment_to_order: { cpkfk_comment_id: @comment_to_order.cpkfk_comment_id, cpkfk_order_id: @comment_to_order.cpkfk_order_id } }
    end

    assert_redirected_to comment_to_order_url(CommentToOrder.last)
  end

  test "should show comment_to_order" do
    get comment_to_order_url(@comment_to_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_to_order_url(@comment_to_order)
    assert_response :success
  end

  test "should update comment_to_order" do
    patch comment_to_order_url(@comment_to_order), params: { comment_to_order: { cpkfk_comment_id: @comment_to_order.cpkfk_comment_id, cpkfk_order_id: @comment_to_order.cpkfk_order_id } }
    assert_redirected_to comment_to_order_url(@comment_to_order)
  end

  test "should destroy comment_to_order" do
    assert_difference('CommentToOrder.count', -1) do
      delete comment_to_order_url(@comment_to_order)
    end

    assert_redirected_to comment_to_orders_url
  end
end
