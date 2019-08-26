require "application_system_test_case"

class CdgOrdersTest < ApplicationSystemTestCase
  setup do
    @cdg_order = cdg_orders(:one)
  end

  test "visiting the index" do
    visit cdg_orders_url
    assert_selector "h1", text: "Cdg Orders"
  end

  test "creating a Cdg order" do
    visit cdg_orders_url
    click_on "New Cdg Order"

    fill_in "Advisor name", with: @cdg_order.advisor_name
    fill_in "Advisor phone", with: @cdg_order.advisor_phone
    fill_in "Branch address1", with: @cdg_order.branch_address1
    fill_in "Branch address2", with: @cdg_order.branch_address2
    fill_in "Branch city", with: @cdg_order.branch_city
    fill_in "Branch", with: @cdg_order.branch_id
    fill_in "Branch name", with: @cdg_order.branch_name
    fill_in "Branch zip", with: @cdg_order.branch_zip
    fill_in "Comments", with: @cdg_order.comments
    fill_in "Contact email address", with: @cdg_order.contact_email_address
    fill_in "Contact name", with: @cdg_order.contact_name
    fill_in "Contact phone", with: @cdg_order.contact_phone
    fill_in "Cost", with: @cdg_order.cost
    fill_in "Date created", with: @cdg_order.date_created
    fill_in "Date downloaded", with: @cdg_order.date_downloaded
    fill_in "Date submitted", with: @cdg_order.date_submitted
    fill_in "Faurl", with: @cdg_order.faURL
    fill_in "Fk ad size", with: @cdg_order.fk_ad_size_id
    fill_in "Fk advisor title", with: @cdg_order.fk_advisor_title_id
    fill_in "Fk area", with: @cdg_order.fk_area_id
    fill_in "Fk assistant", with: @cdg_order.fk_assistant_id
    fill_in "Fk branch", with: @cdg_order.fk_branch_id
    fill_in "Fk branch state", with: @cdg_order.fk_branch_state_id
    fill_in "Fk creator", with: @cdg_order.fk_creator_id
    fill_in "Fk headline", with: @cdg_order.fk_headline_id
    fill_in "Fk order status", with: @cdg_order.fk_order_status_id
    fill_in "Fk publication type", with: @cdg_order.fk_publication_type_id
    fill_in "Fk region", with: @cdg_order.fk_region_id
    fill_in "Fk source branch", with: @cdg_order.fk_source_branch_id
    fill_in "Fk template", with: @cdg_order.fk_template_id
    fill_in "Hi res uri", with: @cdg_order.hi_res_uri
    fill_in "Is active", with: @cdg_order.is_active
    fill_in "Is legacy", with: @cdg_order.is_legacy
    fill_in "Last preview", with: @cdg_order.last_preview
    fill_in "Last saved page name", with: @cdg_order.last_saved_page_name
    fill_in "Materials close date", with: @cdg_order.materials_close_date
    fill_in "Publication name", with: @cdg_order.publication_name
    fill_in "Run date", with: @cdg_order.run_date
    fill_in "Seminar date time", with: @cdg_order.seminar_date_time
    fill_in "Seminar location", with: @cdg_order.seminar_location
    fill_in "Speaker name and title", with: @cdg_order.speaker_name_and_title
    click_on "Create Cdg order"

    assert_text "Cdg order was successfully created"
    click_on "Back"
  end

  test "updating a Cdg order" do
    visit cdg_orders_url
    click_on "Edit", match: :first

    fill_in "Advisor name", with: @cdg_order.advisor_name
    fill_in "Advisor phone", with: @cdg_order.advisor_phone
    fill_in "Branch address1", with: @cdg_order.branch_address1
    fill_in "Branch address2", with: @cdg_order.branch_address2
    fill_in "Branch city", with: @cdg_order.branch_city
    fill_in "Branch", with: @cdg_order.branch_id
    fill_in "Branch name", with: @cdg_order.branch_name
    fill_in "Branch zip", with: @cdg_order.branch_zip
    fill_in "Comments", with: @cdg_order.comments
    fill_in "Contact email address", with: @cdg_order.contact_email_address
    fill_in "Contact name", with: @cdg_order.contact_name
    fill_in "Contact phone", with: @cdg_order.contact_phone
    fill_in "Cost", with: @cdg_order.cost
    fill_in "Date created", with: @cdg_order.date_created
    fill_in "Date downloaded", with: @cdg_order.date_downloaded
    fill_in "Date submitted", with: @cdg_order.date_submitted
    fill_in "Faurl", with: @cdg_order.faURL
    fill_in "Fk ad size", with: @cdg_order.fk_ad_size_id
    fill_in "Fk advisor title", with: @cdg_order.fk_advisor_title_id
    fill_in "Fk area", with: @cdg_order.fk_area_id
    fill_in "Fk assistant", with: @cdg_order.fk_assistant_id
    fill_in "Fk branch", with: @cdg_order.fk_branch_id
    fill_in "Fk branch state", with: @cdg_order.fk_branch_state_id
    fill_in "Fk creator", with: @cdg_order.fk_creator_id
    fill_in "Fk headline", with: @cdg_order.fk_headline_id
    fill_in "Fk order status", with: @cdg_order.fk_order_status_id
    fill_in "Fk publication type", with: @cdg_order.fk_publication_type_id
    fill_in "Fk region", with: @cdg_order.fk_region_id
    fill_in "Fk source branch", with: @cdg_order.fk_source_branch_id
    fill_in "Fk template", with: @cdg_order.fk_template_id
    fill_in "Hi res uri", with: @cdg_order.hi_res_uri
    fill_in "Is active", with: @cdg_order.is_active
    fill_in "Is legacy", with: @cdg_order.is_legacy
    fill_in "Last preview", with: @cdg_order.last_preview
    fill_in "Last saved page name", with: @cdg_order.last_saved_page_name
    fill_in "Materials close date", with: @cdg_order.materials_close_date
    fill_in "Publication name", with: @cdg_order.publication_name
    fill_in "Run date", with: @cdg_order.run_date
    fill_in "Seminar date time", with: @cdg_order.seminar_date_time
    fill_in "Seminar location", with: @cdg_order.seminar_location
    fill_in "Speaker name and title", with: @cdg_order.speaker_name_and_title
    click_on "Update Cdg order"

    assert_text "Cdg order was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg order" do
    visit cdg_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg order was successfully destroyed"
  end
end
