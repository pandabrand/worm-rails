require "application_system_test_case"

class Title1sTest < ApplicationSystemTestCase
  setup do
    @title1 = title1s(:one)
  end

  test "visiting the index" do
    visit title1s_url
    assert_selector "h1", text: "Title1s"
  end

  test "creating a Title1" do
    visit title1s_url
    click_on "New Title1"

    fill_in "Is active", with: @title1.is_active
    fill_in "Name", with: @title1.name
    fill_in "Sort order", with: @title1.sort_order
    click_on "Create Title1"

    assert_text "Title1 was successfully created"
    click_on "Back"
  end

  test "updating a Title1" do
    visit title1s_url
    click_on "Edit", match: :first

    fill_in "Is active", with: @title1.is_active
    fill_in "Name", with: @title1.name
    fill_in "Sort order", with: @title1.sort_order
    click_on "Update Title1"

    assert_text "Title1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Title1" do
    visit title1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Title1 was successfully destroyed"
  end
end
