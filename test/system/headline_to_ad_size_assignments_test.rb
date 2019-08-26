require "application_system_test_case"

class HeadlineToAdSizeAssignmentsTest < ApplicationSystemTestCase
  setup do
    @headline_to_ad_size_assignment = headline_to_ad_size_assignments(:one)
  end

  test "visiting the index" do
    visit headline_to_ad_size_assignments_url
    assert_selector "h1", text: "Headline To Ad Size Assignments"
  end

  test "creating a Headline to ad size assignment" do
    visit headline_to_ad_size_assignments_url
    click_on "New Headline To Ad Size Assignment"

    fill_in "Cpkfk ad size", with: @headline_to_ad_size_assignment.cpkfk_ad_size_id
    fill_in "Cpkfk headline", with: @headline_to_ad_size_assignment.cpkfk_headline_id
    fill_in "Is active", with: @headline_to_ad_size_assignment.is_active
    click_on "Create Headline to ad size assignment"

    assert_text "Headline to ad size assignment was successfully created"
    click_on "Back"
  end

  test "updating a Headline to ad size assignment" do
    visit headline_to_ad_size_assignments_url
    click_on "Edit", match: :first

    fill_in "Cpkfk ad size", with: @headline_to_ad_size_assignment.cpkfk_ad_size_id
    fill_in "Cpkfk headline", with: @headline_to_ad_size_assignment.cpkfk_headline_id
    fill_in "Is active", with: @headline_to_ad_size_assignment.is_active
    click_on "Update Headline to ad size assignment"

    assert_text "Headline to ad size assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Headline to ad size assignment" do
    visit headline_to_ad_size_assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Headline to ad size assignment was successfully destroyed"
  end
end
