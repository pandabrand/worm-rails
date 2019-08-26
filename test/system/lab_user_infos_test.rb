require "application_system_test_case"

class LabUserInfosTest < ApplicationSystemTestCase
  setup do
    @lab_user_info = lab_user_infos(:one)
  end

  test "visiting the index" do
    visit lab_user_infos_url
    assert_selector "h1", text: "Lab User Infos"
  end

  test "creating a Lab user info" do
    visit lab_user_infos_url
    click_on "New Lab User Info"

    fill_in "Alternate address 1", with: @lab_user_info.alternate_address_1
    fill_in "Alternate address 2", with: @lab_user_info.alternate_address_2
    fill_in "Alternate city", with: @lab_user_info.alternate_city
    fill_in "Alternate zip", with: @lab_user_info.alternate_zip
    fill_in "Assistant email", with: @lab_user_info.assistant_email
    fill_in "Business fax", with: @lab_user_info.business_fax
    fill_in "Business phone", with: @lab_user_info.business_phone
    fill_in "Date created", with: @lab_user_info.date_created
    fill_in "Date modified", with: @lab_user_info.date_modified
    fill_in "Employee", with: @lab_user_info.employee_id
    fill_in "Financial advisor", with: @lab_user_info.financial_advisor_id
    fill_in "Fktitle3id", with: @lab_user_info.fkTitle3ID
    fill_in "Fk alternate us state", with: @lab_user_info.fk_alternate_us_state_id
    fill_in "Fk area", with: @lab_user_info.fk_area_id
    fill_in "Fk branch", with: @lab_user_info.fk_branch_id
    fill_in "Fk client", with: @lab_user_info.fk_client_id
    fill_in "Fk country", with: @lab_user_info.fk_country_id
    fill_in "Fk region", with: @lab_user_info.fk_region_id
    fill_in "Fk roletitle", with: @lab_user_info.fk_roletitle_id
    fill_in "Fk title1", with: @lab_user_info.fk_title1_id
    fill_in "Fk title2", with: @lab_user_info.fk_title2_id
    fill_in "Is active", with: @lab_user_info.is_active
    fill_in "Name first", with: @lab_user_info.name_first
    fill_in "Name last", with: @lab_user_info.name_last
    click_on "Create Lab user info"

    assert_text "Lab user info was successfully created"
    click_on "Back"
  end

  test "updating a Lab user info" do
    visit lab_user_infos_url
    click_on "Edit", match: :first

    fill_in "Alternate address 1", with: @lab_user_info.alternate_address_1
    fill_in "Alternate address 2", with: @lab_user_info.alternate_address_2
    fill_in "Alternate city", with: @lab_user_info.alternate_city
    fill_in "Alternate zip", with: @lab_user_info.alternate_zip
    fill_in "Assistant email", with: @lab_user_info.assistant_email
    fill_in "Business fax", with: @lab_user_info.business_fax
    fill_in "Business phone", with: @lab_user_info.business_phone
    fill_in "Date created", with: @lab_user_info.date_created
    fill_in "Date modified", with: @lab_user_info.date_modified
    fill_in "Employee", with: @lab_user_info.employee_id
    fill_in "Financial advisor", with: @lab_user_info.financial_advisor_id
    fill_in "Fktitle3id", with: @lab_user_info.fkTitle3ID
    fill_in "Fk alternate us state", with: @lab_user_info.fk_alternate_us_state_id
    fill_in "Fk area", with: @lab_user_info.fk_area_id
    fill_in "Fk branch", with: @lab_user_info.fk_branch_id
    fill_in "Fk client", with: @lab_user_info.fk_client_id
    fill_in "Fk country", with: @lab_user_info.fk_country_id
    fill_in "Fk region", with: @lab_user_info.fk_region_id
    fill_in "Fk roletitle", with: @lab_user_info.fk_roletitle_id
    fill_in "Fk title1", with: @lab_user_info.fk_title1_id
    fill_in "Fk title2", with: @lab_user_info.fk_title2_id
    fill_in "Is active", with: @lab_user_info.is_active
    fill_in "Name first", with: @lab_user_info.name_first
    fill_in "Name last", with: @lab_user_info.name_last
    click_on "Update Lab user info"

    assert_text "Lab user info was successfully updated"
    click_on "Back"
  end

  test "destroying a Lab user info" do
    visit lab_user_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lab user info was successfully destroyed"
  end
end
