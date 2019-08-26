require "application_system_test_case"

class CdgTemplatesTest < ApplicationSystemTestCase
  setup do
    @cdg_template = cdg_templates(:one)
  end

  test "visiting the index" do
    visit cdg_templates_url
    assert_selector "h1", text: "Cdg Templates"
  end

  test "creating a Cdg template" do
    visit cdg_templates_url
    click_on "New Cdg Template"

    fill_in "Code", with: @cdg_template.code
    fill_in "Fk ad matrix category", with: @cdg_template.fk_ad_matrix_category_id
    fill_in "Fk ad size", with: @cdg_template.fk_ad_size
    fill_in "Fk headline", with: @cdg_template.fk_headline
    fill_in "Instructions", with: @cdg_template.instructions
    fill_in "Is active", with: @cdg_template.is_active
    fill_in "Mediatype", with: @cdg_template.mediatype_id
    fill_in "Path", with: @cdg_template.path
    fill_in "Pdf filename", with: @cdg_template.pdf_filename
    fill_in "Proxy path", with: @cdg_template.proxy_path
    fill_in "Thumbnail path", with: @cdg_template.thumbnail_path
    fill_in "Title", with: @cdg_template.title
    fill_in "Tweenduration", with: @cdg_template.tweenDuration
    fill_in "Tweenframes", with: @cdg_template.tweenFrames
    fill_in "Version", with: @cdg_template.version
    fill_in "Xml info", with: @cdg_template.xml_info
    click_on "Create Cdg template"

    assert_text "Cdg template was successfully created"
    click_on "Back"
  end

  test "updating a Cdg template" do
    visit cdg_templates_url
    click_on "Edit", match: :first

    fill_in "Code", with: @cdg_template.code
    fill_in "Fk ad matrix category", with: @cdg_template.fk_ad_matrix_category_id
    fill_in "Fk ad size", with: @cdg_template.fk_ad_size
    fill_in "Fk headline", with: @cdg_template.fk_headline
    fill_in "Instructions", with: @cdg_template.instructions
    fill_in "Is active", with: @cdg_template.is_active
    fill_in "Mediatype", with: @cdg_template.mediatype_id
    fill_in "Path", with: @cdg_template.path
    fill_in "Pdf filename", with: @cdg_template.pdf_filename
    fill_in "Proxy path", with: @cdg_template.proxy_path
    fill_in "Thumbnail path", with: @cdg_template.thumbnail_path
    fill_in "Title", with: @cdg_template.title
    fill_in "Tweenduration", with: @cdg_template.tweenDuration
    fill_in "Tweenframes", with: @cdg_template.tweenFrames
    fill_in "Version", with: @cdg_template.version
    fill_in "Xml info", with: @cdg_template.xml_info
    click_on "Update Cdg template"

    assert_text "Cdg template was successfully updated"
    click_on "Back"
  end

  test "destroying a Cdg template" do
    visit cdg_templates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cdg template was successfully destroyed"
  end
end
