require 'test_helper'

class CdgOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_order = cdg_orders(:one)
  end

  test "should get index" do
    get cdg_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_order_url
    assert_response :success
  end

  test "should create cdg_order" do
    assert_difference('CdgOrder.count') do
      post cdg_orders_url, params: { cdg_order: { advisor_name: @cdg_order.advisor_name, advisor_phone: @cdg_order.advisor_phone, branch_address1: @cdg_order.branch_address1, branch_address2: @cdg_order.branch_address2, branch_city: @cdg_order.branch_city, branch_id: @cdg_order.branch_id, branch_name: @cdg_order.branch_name, branch_zip: @cdg_order.branch_zip, comments: @cdg_order.comments, contact_email_address: @cdg_order.contact_email_address, contact_name: @cdg_order.contact_name, contact_phone: @cdg_order.contact_phone, cost: @cdg_order.cost, date_created: @cdg_order.date_created, date_downloaded: @cdg_order.date_downloaded, date_submitted: @cdg_order.date_submitted, faURL: @cdg_order.faURL, fk_ad_size_id: @cdg_order.fk_ad_size_id, fk_advisor_title_id: @cdg_order.fk_advisor_title_id, fk_area_id: @cdg_order.fk_area_id, fk_assistant_id: @cdg_order.fk_assistant_id, fk_branch_id: @cdg_order.fk_branch_id, fk_branch_state_id: @cdg_order.fk_branch_state_id, fk_creator_id: @cdg_order.fk_creator_id, fk_headline_id: @cdg_order.fk_headline_id, fk_order_status_id: @cdg_order.fk_order_status_id, fk_publication_type_id: @cdg_order.fk_publication_type_id, fk_region_id: @cdg_order.fk_region_id, fk_source_branch_id: @cdg_order.fk_source_branch_id, fk_template_id: @cdg_order.fk_template_id, hi_res_uri: @cdg_order.hi_res_uri, is_active: @cdg_order.is_active, is_legacy: @cdg_order.is_legacy, last_preview: @cdg_order.last_preview, last_saved_page_name: @cdg_order.last_saved_page_name, materials_close_date: @cdg_order.materials_close_date, publication_name: @cdg_order.publication_name, run_date: @cdg_order.run_date, seminar_date_time: @cdg_order.seminar_date_time, seminar_location: @cdg_order.seminar_location, speaker_name_and_title: @cdg_order.speaker_name_and_title } }
    end

    assert_redirected_to cdg_order_url(CdgOrder.last)
  end

  test "should show cdg_order" do
    get cdg_order_url(@cdg_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_order_url(@cdg_order)
    assert_response :success
  end

  test "should update cdg_order" do
    patch cdg_order_url(@cdg_order), params: { cdg_order: { advisor_name: @cdg_order.advisor_name, advisor_phone: @cdg_order.advisor_phone, branch_address1: @cdg_order.branch_address1, branch_address2: @cdg_order.branch_address2, branch_city: @cdg_order.branch_city, branch_id: @cdg_order.branch_id, branch_name: @cdg_order.branch_name, branch_zip: @cdg_order.branch_zip, comments: @cdg_order.comments, contact_email_address: @cdg_order.contact_email_address, contact_name: @cdg_order.contact_name, contact_phone: @cdg_order.contact_phone, cost: @cdg_order.cost, date_created: @cdg_order.date_created, date_downloaded: @cdg_order.date_downloaded, date_submitted: @cdg_order.date_submitted, faURL: @cdg_order.faURL, fk_ad_size_id: @cdg_order.fk_ad_size_id, fk_advisor_title_id: @cdg_order.fk_advisor_title_id, fk_area_id: @cdg_order.fk_area_id, fk_assistant_id: @cdg_order.fk_assistant_id, fk_branch_id: @cdg_order.fk_branch_id, fk_branch_state_id: @cdg_order.fk_branch_state_id, fk_creator_id: @cdg_order.fk_creator_id, fk_headline_id: @cdg_order.fk_headline_id, fk_order_status_id: @cdg_order.fk_order_status_id, fk_publication_type_id: @cdg_order.fk_publication_type_id, fk_region_id: @cdg_order.fk_region_id, fk_source_branch_id: @cdg_order.fk_source_branch_id, fk_template_id: @cdg_order.fk_template_id, hi_res_uri: @cdg_order.hi_res_uri, is_active: @cdg_order.is_active, is_legacy: @cdg_order.is_legacy, last_preview: @cdg_order.last_preview, last_saved_page_name: @cdg_order.last_saved_page_name, materials_close_date: @cdg_order.materials_close_date, publication_name: @cdg_order.publication_name, run_date: @cdg_order.run_date, seminar_date_time: @cdg_order.seminar_date_time, seminar_location: @cdg_order.seminar_location, speaker_name_and_title: @cdg_order.speaker_name_and_title } }
    assert_redirected_to cdg_order_url(@cdg_order)
  end

  test "should destroy cdg_order" do
    assert_difference('CdgOrder.count', -1) do
      delete cdg_order_url(@cdg_order)
    end

    assert_redirected_to cdg_orders_url
  end
end
