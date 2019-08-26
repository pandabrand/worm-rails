require "application_system_test_case"

class CommentToOrdersTest < ApplicationSystemTestCase
  setup do
    @comment_to_order = comment_to_orders(:one)
  end

  test "visiting the index" do
    visit comment_to_orders_url
    assert_selector "h1", text: "Comment To Orders"
  end

  test "creating a Comment to order" do
    visit comment_to_orders_url
    click_on "New Comment To Order"

    fill_in "Cpkfk comment", with: @comment_to_order.cpkfk_comment_id
    fill_in "Cpkfk order", with: @comment_to_order.cpkfk_order_id
    click_on "Create Comment to order"

    assert_text "Comment to order was successfully created"
    click_on "Back"
  end

  test "updating a Comment to order" do
    visit comment_to_orders_url
    click_on "Edit", match: :first

    fill_in "Cpkfk comment", with: @comment_to_order.cpkfk_comment_id
    fill_in "Cpkfk order", with: @comment_to_order.cpkfk_order_id
    click_on "Update Comment to order"

    assert_text "Comment to order was successfully updated"
    click_on "Back"
  end

  test "destroying a Comment to order" do
    visit comment_to_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comment to order was successfully destroyed"
  end
end
