require "application_system_test_case"

class FeaturedHeadlinesTest < ApplicationSystemTestCase
  setup do
    @featured_headline = featured_headlines(:one)
  end

  test "visiting the index" do
    visit featured_headlines_url
    assert_selector "h1", text: "Featured Headlines"
  end

  test "creating a Featured headline" do
    visit featured_headlines_url
    click_on "New Featured Headline"

    fill_in "Fk headline", with: @featured_headline.fk_headline_id
    fill_in "Headline sort order", with: @featured_headline.headline_sort_order
    fill_in "Tag line", with: @featured_headline.tag_line
    click_on "Create Featured headline"

    assert_text "Featured headline was successfully created"
    click_on "Back"
  end

  test "updating a Featured headline" do
    visit featured_headlines_url
    click_on "Edit", match: :first

    fill_in "Fk headline", with: @featured_headline.fk_headline_id
    fill_in "Headline sort order", with: @featured_headline.headline_sort_order
    fill_in "Tag line", with: @featured_headline.tag_line
    click_on "Update Featured headline"

    assert_text "Featured headline was successfully updated"
    click_on "Back"
  end

  test "destroying a Featured headline" do
    visit featured_headlines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Featured headline was successfully destroyed"
  end
end
