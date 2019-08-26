require "application_system_test_case"

class ApprovalDetailsTest < ApplicationSystemTestCase
  setup do
    @approval_detail = approval_details(:one)
  end

  test "visiting the index" do
    visit approval_details_url
    assert_selector "h1", text: "Approval Details"
  end

  test "creating a Approval detail" do
    visit approval_details_url
    click_on "New Approval Detail"

    fill_in "Comments", with: @approval_detail.comments
    fill_in "Date created", with: @approval_detail.date_created
    fill_in "Fk assistant", with: @approval_detail.fk_assistant_id
    fill_in "Fk order", with: @approval_detail.fk_order_id
    fill_in "Fk order item", with: @approval_detail.fk_order_item_id
    fill_in "Fk role", with: @approval_detail.fk_role_id
    fill_in "Fk user", with: @approval_detail.fk_user_id
    fill_in "Fk work activity instance", with: @approval_detail.fk_work_activity_instance_id
    fill_in "Media", with: @approval_detail.media_id
    fill_in "Order number", with: @approval_detail.order_number
    fill_in "Status description", with: @approval_detail.status_description
    fill_in "User name", with: @approval_detail.user_name
    fill_in "User role", with: @approval_detail.user_role
    click_on "Create Approval detail"

    assert_text "Approval detail was successfully created"
    click_on "Back"
  end

  test "updating a Approval detail" do
    visit approval_details_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @approval_detail.comments
    fill_in "Date created", with: @approval_detail.date_created
    fill_in "Fk assistant", with: @approval_detail.fk_assistant_id
    fill_in "Fk order", with: @approval_detail.fk_order_id
    fill_in "Fk order item", with: @approval_detail.fk_order_item_id
    fill_in "Fk role", with: @approval_detail.fk_role_id
    fill_in "Fk user", with: @approval_detail.fk_user_id
    fill_in "Fk work activity instance", with: @approval_detail.fk_work_activity_instance_id
    fill_in "Media", with: @approval_detail.media_id
    fill_in "Order number", with: @approval_detail.order_number
    fill_in "Status description", with: @approval_detail.status_description
    fill_in "User name", with: @approval_detail.user_name
    fill_in "User role", with: @approval_detail.user_role
    click_on "Update Approval detail"

    assert_text "Approval detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Approval detail" do
    visit approval_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Approval detail was successfully destroyed"
  end
end
