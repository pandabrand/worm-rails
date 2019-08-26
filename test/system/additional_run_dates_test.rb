require "application_system_test_case"

class AdditionalRunDatesTest < ApplicationSystemTestCase
  setup do
    @additional_run_date = additional_run_dates(:one)
  end

  test "visiting the index" do
    visit additional_run_dates_url
    assert_selector "h1", text: "Additional Run Dates"
  end

  test "creating a Additional run date" do
    visit additional_run_dates_url
    click_on "New Additional Run Date"

    fill_in "Fk order", with: @additional_run_date.fk_order_id
    fill_in "Pk", with: @additional_run_date.pk_id
    fill_in "Run date", with: @additional_run_date.run_date
    click_on "Create Additional run date"

    assert_text "Additional run date was successfully created"
    click_on "Back"
  end

  test "updating a Additional run date" do
    visit additional_run_dates_url
    click_on "Edit", match: :first

    fill_in "Fk order", with: @additional_run_date.fk_order_id
    fill_in "Pk", with: @additional_run_date.pk_id
    fill_in "Run date", with: @additional_run_date.run_date
    click_on "Update Additional run date"

    assert_text "Additional run date was successfully updated"
    click_on "Back"
  end

  test "destroying a Additional run date" do
    visit additional_run_dates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Additional run date was successfully destroyed"
  end
end
