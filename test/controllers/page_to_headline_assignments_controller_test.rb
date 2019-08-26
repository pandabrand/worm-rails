require 'test_helper'

class PageToHeadlineAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page_to_headline_assignment = page_to_headline_assignments(:one)
  end

  test "should get index" do
    get page_to_headline_assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_page_to_headline_assignment_url
    assert_response :success
  end

  test "should create page_to_headline_assignment" do
    assert_difference('PageToHeadlineAssignment.count') do
      post page_to_headline_assignments_url, params: { page_to_headline_assignment: { cpkfk_headline_id: @page_to_headline_assignment.cpkfk_headline_id, cpkfk_page_content_id: @page_to_headline_assignment.cpkfk_page_content_id, headline_sort_order: @page_to_headline_assignment.headline_sort_order } }
    end

    assert_redirected_to page_to_headline_assignment_url(PageToHeadlineAssignment.last)
  end

  test "should show page_to_headline_assignment" do
    get page_to_headline_assignment_url(@page_to_headline_assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_page_to_headline_assignment_url(@page_to_headline_assignment)
    assert_response :success
  end

  test "should update page_to_headline_assignment" do
    patch page_to_headline_assignment_url(@page_to_headline_assignment), params: { page_to_headline_assignment: { cpkfk_headline_id: @page_to_headline_assignment.cpkfk_headline_id, cpkfk_page_content_id: @page_to_headline_assignment.cpkfk_page_content_id, headline_sort_order: @page_to_headline_assignment.headline_sort_order } }
    assert_redirected_to page_to_headline_assignment_url(@page_to_headline_assignment)
  end

  test "should destroy page_to_headline_assignment" do
    assert_difference('PageToHeadlineAssignment.count', -1) do
      delete page_to_headline_assignment_url(@page_to_headline_assignment)
    end

    assert_redirected_to page_to_headline_assignments_url
  end
end
