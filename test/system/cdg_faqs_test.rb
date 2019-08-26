require "application_system_test_case"

class CdgFaqsTest < ApplicationSystemTestCase
  setup do
    @cdg_faq = cdg_faqs(:one)
  end

  test "visiting the index" do
    visit cdg_faqs_url
    assert_selector "h1", text: "Cdg Faqs"
  end

  test "creating a Cdg faq" do
    visit cdg_faqs_url
    click_on "New Cdg Faq"

    fill_in "Answer", with: @cdg_faq.answer
    fill_in "Is active", with: @cdg_faq.is_active
    fill_in "Question", with: @cdg_faq.question
    fill_in "Sort order", with: @cdg_faq.sort_order
    click_on "Create Cdg faq"

    assert_text "Cdg faq was successfully created"
    click_on "Back"
  end

  test "updating a Cdg faq" do
    visit cdg_faqs_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @cdg_faq.answer
    fill_in "Is active", with: @cdg_faq.is_active
    fill_in "Question", with: @cdg_faq.question
    fill_in "Sort order", with: @cdg_faq.sort_order
    click_on "Update Cdg faq"

    assert_text "Cdg faq was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg faq" do
    visit cdg_faqs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg faq was successfully destroyed"
  end
end
