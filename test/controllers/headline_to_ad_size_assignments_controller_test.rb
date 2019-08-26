require 'test_helper'

class HeadlineToAdSizeAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headline_to_ad_size_assignment = headline_to_ad_size_assignments(:one)
  end

  test "should get index" do
    get headline_to_ad_size_assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_headline_to_ad_size_assignment_url
    assert_response :success
  end

  test "should create headline_to_ad_size_assignment" do
    assert_difference('HeadlineToAdSizeAssignment.count') do
      post headline_to_ad_size_assignments_url, params: { headline_to_ad_size_assignment: { cpkfk_ad_size_id: @headline_to_ad_size_assignment.cpkfk_ad_size_id, cpkfk_headline_id: @headline_to_ad_size_assignment.cpkfk_headline_id, is_active: @headline_to_ad_size_assignment.is_active } }
    end

    assert_redirected_to headline_to_ad_size_assignment_url(HeadlineToAdSizeAssignment.last)
  end

  test "should show headline_to_ad_size_assignment" do
    get headline_to_ad_size_assignment_url(@headline_to_ad_size_assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_headline_to_ad_size_assignment_url(@headline_to_ad_size_assignment)
    assert_response :success
  end

  test "should update headline_to_ad_size_assignment" do
    patch headline_to_ad_size_assignment_url(@headline_to_ad_size_assignment), params: { headline_to_ad_size_assignment: { cpkfk_ad_size_id: @headline_to_ad_size_assignment.cpkfk_ad_size_id, cpkfk_headline_id: @headline_to_ad_size_assignment.cpkfk_headline_id, is_active: @headline_to_ad_size_assignment.is_active } }
    assert_redirected_to headline_to_ad_size_assignment_url(@headline_to_ad_size_assignment)
  end

  test "should destroy headline_to_ad_size_assignment" do
    assert_difference('HeadlineToAdSizeAssignment.count', -1) do
      delete headline_to_ad_size_assignment_url(@headline_to_ad_size_assignment)
    end

    assert_redirected_to headline_to_ad_size_assignments_url
  end
end
