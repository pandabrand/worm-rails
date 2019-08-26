require 'test_helper'

class CdgTemplateStageDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_template_stage_datum = cdg_template_stage_data(:one)
  end

  test "should get index" do
    get cdg_template_stage_data_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_template_stage_datum_url
    assert_response :success
  end

  test "should create cdg_template_stage_datum" do
    assert_difference('CdgTemplateStageDatum.count') do
      post cdg_template_stage_data_url, params: { cdg_template_stage_datum: { code: @cdg_template_stage_datum.code, fk_ad_matrix_category_id: @cdg_template_stage_datum.fk_ad_matrix_category_id, fk_ad_size: @cdg_template_stage_datum.fk_ad_size, fk_headline: @cdg_template_stage_datum.fk_headline, instructions: @cdg_template_stage_datum.instructions, is_active: @cdg_template_stage_datum.is_active, path: @cdg_template_stage_datum.path, pdf_filename: @cdg_template_stage_datum.pdf_filename, proxy_path: @cdg_template_stage_datum.proxy_path, thumbnail_path: @cdg_template_stage_datum.thumbnail_path, title: @cdg_template_stage_datum.title, version: @cdg_template_stage_datum.version, xml_info: @cdg_template_stage_datum.xml_info } }
    end

    assert_redirected_to cdg_template_stage_datum_url(CdgTemplateStageDatum.last)
  end

  test "should show cdg_template_stage_datum" do
    get cdg_template_stage_datum_url(@cdg_template_stage_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_template_stage_datum_url(@cdg_template_stage_datum)
    assert_response :success
  end

  test "should update cdg_template_stage_datum" do
    patch cdg_template_stage_datum_url(@cdg_template_stage_datum), params: { cdg_template_stage_datum: { code: @cdg_template_stage_datum.code, fk_ad_matrix_category_id: @cdg_template_stage_datum.fk_ad_matrix_category_id, fk_ad_size: @cdg_template_stage_datum.fk_ad_size, fk_headline: @cdg_template_stage_datum.fk_headline, instructions: @cdg_template_stage_datum.instructions, is_active: @cdg_template_stage_datum.is_active, path: @cdg_template_stage_datum.path, pdf_filename: @cdg_template_stage_datum.pdf_filename, proxy_path: @cdg_template_stage_datum.proxy_path, thumbnail_path: @cdg_template_stage_datum.thumbnail_path, title: @cdg_template_stage_datum.title, version: @cdg_template_stage_datum.version, xml_info: @cdg_template_stage_datum.xml_info } }
    assert_redirected_to cdg_template_stage_datum_url(@cdg_template_stage_datum)
  end

  test "should destroy cdg_template_stage_datum" do
    assert_difference('CdgTemplateStageDatum.count', -1) do
      delete cdg_template_stage_datum_url(@cdg_template_stage_datum)
    end

    assert_redirected_to cdg_template_stage_data_url
  end
end
