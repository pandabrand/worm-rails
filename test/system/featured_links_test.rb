require "application_system_test_case"

class FeaturedLinksTest < ApplicationSystemTestCase
  setup do
    @featured_link = featured_links(:one)
  end

  test "visiting the index" do
    visit featured_links_url
    assert_selector "h1", text: "Featured Links"
  end

  test "creating a Featured link" do
    visit featured_links_url
    click_on "New Featured Link"

    fill_in "Address", with: @featured_link.address
    fill_in "Link name", with: @featured_link.link_name
    fill_in "Sort order", with: @featured_link.sort_order
    click_on "Create Featured link"

    assert_text "Featured link was successfully created"
    click_on "Back"
  end

  test "updating a Featured link" do
    visit featured_links_url
    click_on "Edit", match: :first

    fill_in "Address", with: @featured_link.address
    fill_in "Link name", with: @featured_link.link_name
    fill_in "Sort order", with: @featured_link.sort_order
    click_on "Update Featured link"

    assert_text "Featured link was successfully updated"
    click_on "Back"
  end

  test "destroying a Featured link" do
    visit featured_links_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Featured link was successfully destroyed"
  end
end
