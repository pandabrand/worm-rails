require "application_system_test_case"

class CdgTemplateStageDataTest < ApplicationSystemTestCase
  setup do
    @cdg_template_stage_datum = cdg_template_stage_data(:one)
  end

  test "visiting the index" do
    visit cdg_template_stage_data_url
    assert_selector "h1", text: "Cdg Template Stage Data"
  end

  test "creating a Cdg template stage datum" do
    visit cdg_template_stage_data_url
    click_on "New Cdg Template Stage Datum"

    fill_in "Code", with: @cdg_template_stage_datum.code
    fill_in "Fk ad matrix category", with: @cdg_template_stage_datum.fk_ad_matrix_category_id
    fill_in "Fk ad size", with: @cdg_template_stage_datum.fk_ad_size
    fill_in "Fk headline", with: @cdg_template_stage_datum.fk_headline
    fill_in "Instructions", with: @cdg_template_stage_datum.instructions
    fill_in "Is active", with: @cdg_template_stage_datum.is_active
    fill_in "Path", with: @cdg_template_stage_datum.path
    fill_in "Pdf filename", with: @cdg_template_stage_datum.pdf_filename
    fill_in "Proxy path", with: @cdg_template_stage_datum.proxy_path
    fill_in "Thumbnail path", with: @cdg_template_stage_datum.thumbnail_path
    fill_in "Title", with: @cdg_template_stage_datum.title
    fill_in "Version", with: @cdg_template_stage_datum.version
    fill_in "Xml info", with: @cdg_template_stage_datum.xml_info
    click_on "Create Cdg template stage datum"

    assert_text "Cdg template stage datum was successfully created"
    click_on "Back"
  end

  test "updating a Cdg template stage datum" do
    visit cdg_template_stage_data_url
    click_on "Edit", match: :first

    fill_in "Code", with: @cdg_template_stage_datum.code
    fill_in "Fk ad matrix category", with: @cdg_template_stage_datum.fk_ad_matrix_category_id
    fill_in "Fk ad size", with: @cdg_template_stage_datum.fk_ad_size
    fill_in "Fk headline", with: @cdg_template_stage_datum.fk_headline
    fill_in "Instructions", with: @cdg_template_stage_datum.instructions
    fill_in "Is active", with: @cdg_template_stage_datum.is_active
    fill_in "Path", with: @cdg_template_stage_datum.path
    fill_in "Pdf filename", with: @cdg_template_stage_datum.pdf_filename
    fill_in "Proxy path", with: @cdg_template_stage_datum.proxy_path
    fill_in "Thumbnail path", with: @cdg_template_stage_datum.thumbnail_path
    fill_in "Title", with: @cdg_template_stage_datum.title
    fill_in "Version", with: @cdg_template_stage_datum.version
    fill_in "Xml info", with: @cdg_template_stage_datum.xml_info
    click_on "Update Cdg template stage datum"

    assert_text "Cdg template stage datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg template stage datum" do
    visit cdg_template_stage_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg template stage datum was successfully destroyed"
  end
end
