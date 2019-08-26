require 'test_helper'

class CdgTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_template = cdg_templates(:one)
  end

  test "should get index" do
    get cdg_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_template_url
    assert_response :success
  end

  test "should create cdg_template" do
    assert_difference('CdgTemplate.count') do
      post cdg_templates_url, params: { cdg_template: { code: @cdg_template.code, fk_ad_matrix_category_id: @cdg_template.fk_ad_matrix_category_id, fk_ad_size: @cdg_template.fk_ad_size, fk_headline: @cdg_template.fk_headline, instructions: @cdg_template.instructions, is_active: @cdg_template.is_active, mediatype_id: @cdg_template.mediatype_id, path: @cdg_template.path, pdf_filename: @cdg_template.pdf_filename, proxy_path: @cdg_template.proxy_path, thumbnail_path: @cdg_template.thumbnail_path, title: @cdg_template.title, tweenDuration: @cdg_template.tweenDuration, tweenFrames: @cdg_template.tweenFrames, version: @cdg_template.version, xml_info: @cdg_template.xml_info } }
    end

    assert_redirected_to cdg_template_url(CdgTemplate.last)
  end

  test "should show cdg_template" do
    get cdg_template_url(@cdg_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_template_url(@cdg_template)
    assert_response :success
  end

  test "should update cdg_template" do
    patch cdg_template_url(@cdg_template), params: { cdg_template: { code: @cdg_template.code, fk_ad_matrix_category_id: @cdg_template.fk_ad_matrix_category_id, fk_ad_size: @cdg_template.fk_ad_size, fk_headline: @cdg_template.fk_headline, instructions: @cdg_template.instructions, is_active: @cdg_template.is_active, mediatype_id: @cdg_template.mediatype_id, path: @cdg_template.path, pdf_filename: @cdg_template.pdf_filename, proxy_path: @cdg_template.proxy_path, thumbnail_path: @cdg_template.thumbnail_path, title: @cdg_template.title, tweenDuration: @cdg_template.tweenDuration, tweenFrames: @cdg_template.tweenFrames, version: @cdg_template.version, xml_info: @cdg_template.xml_info } }
    assert_redirected_to cdg_template_url(@cdg_template)
  end

  test "should destroy cdg_template" do
    assert_difference('CdgTemplate.count', -1) do
      delete cdg_template_url(@cdg_template)
    end

    assert_redirected_to cdg_templates_url
  end
end
