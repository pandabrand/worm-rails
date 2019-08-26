require "application_system_test_case"

class TitlesTest < ApplicationSystemTestCase
  setup do
    @title = titles(:one)
  end

  test "visiting the index" do
    visit titles_url
    assert_selector "h1", text: "Titles"
  end

  test "creating a Title" do
    visit titles_url
    click_on "New Title"

    fill_in "Is active", with: @title.is_active
    fill_in "Is title 1", with: @title.is_title_1
    fill_in "Is title 2", with: @title.is_title_2
    fill_in "Is title 3", with: @title.is_title_3
    fill_in "Name", with: @title.name
    fill_in "Sort order", with: @title.sort_order
    click_on "Create Title"

    assert_text "Title was successfully created"
    click_on "Back"
  end

  test "updating a Title" do
    visit titles_url
    click_on "Edit", match: :first

    fill_in "Is active", with: @title.is_active
    fill_in "Is title 1", with: @title.is_title_1
    fill_in "Is title 2", with: @title.is_title_2
    fill_in "Is title 3", with: @title.is_title_3
    fill_in "Name", with: @title.name
    fill_in "Sort order", with: @title.sort_order
    click_on "Update Title"

    assert_text "Title was successfully updated"
    click_on "Back"
  end

  test "destroying a Title" do
    visit titles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Title was successfully destroyed"
  end
end
