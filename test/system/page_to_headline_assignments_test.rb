require "application_system_test_case"

class PageToHeadlineAssignmentsTest < ApplicationSystemTestCase
  setup do
    @page_to_headline_assignment = page_to_headline_assignments(:one)
  end

  test "visiting the index" do
    visit page_to_headline_assignments_url
    assert_selector "h1", text: "Page To Headline Assignments"
  end

  test "creating a Page to headline assignment" do
    visit page_to_headline_assignments_url
    click_on "New Page To Headline Assignment"

    fill_in "Cpkfk headline", with: @page_to_headline_assignment.cpkfk_headline_id
    fill_in "Cpkfk page content", with: @page_to_headline_assignment.cpkfk_page_content_id
    fill_in "Headline sort order", with: @page_to_headline_assignment.headline_sort_order
    click_on "Create Page to headline assignment"

    assert_text "Page to headline assignment was successfully created"
    click_on "Back"
  end

  test "updating a Page to headline assignment" do
    visit page_to_headline_assignments_url
    click_on "Edit", match: :first

    fill_in "Cpkfk headline", with: @page_to_headline_assignment.cpkfk_headline_id
    fill_in "Cpkfk page content", with: @page_to_headline_assignment.cpkfk_page_content_id
    fill_in "Headline sort order", with: @page_to_headline_assignment.headline_sort_order
    click_on "Update Page to headline assignment"

    assert_text "Page to headline assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Page to headline assignment" do
    visit page_to_headline_assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Page to headline assignment was successfully destroyed"
  end
end
