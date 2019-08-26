require 'test_helper'

class LabHeadlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lab_headline = lab_headlines(:one)
  end

  test "should get index" do
    get lab_headlines_url
    assert_response :success
  end

  test "should get new" do
    get new_lab_headline_url
    assert_response :success
  end

  test "should create lab_headline" do
    assert_difference('LabHeadline.count') do
      post lab_headlines_url, params: { lab_headline: { code: @lab_headline.code, fk_ad_matrix_category_id: @lab_headline.fk_ad_matrix_category_id, fk_matching_headline_category_id: @lab_headline.fk_matching_headline_category_id, fk_template: @lab_headline.fk_template, headlineColorTypeID: @lab_headline.headlineColorTypeID, is_accessible: @lab_headline.is_accessible, is_accessible_text: @lab_headline.is_accessible_text, is_active: @lab_headline.is_active, title: @lab_headline.title } }
    end

    assert_redirected_to lab_headline_url(LabHeadline.last)
  end

  test "should show lab_headline" do
    get lab_headline_url(@lab_headline)
    assert_response :success
  end

  test "should get edit" do
    get edit_lab_headline_url(@lab_headline)
    assert_response :success
  end

  test "should update lab_headline" do
    patch lab_headline_url(@lab_headline), params: { lab_headline: { code: @lab_headline.code, fk_ad_matrix_category_id: @lab_headline.fk_ad_matrix_category_id, fk_matching_headline_category_id: @lab_headline.fk_matching_headline_category_id, fk_template: @lab_headline.fk_template, headlineColorTypeID: @lab_headline.headlineColorTypeID, is_accessible: @lab_headline.is_accessible, is_accessible_text: @lab_headline.is_accessible_text, is_active: @lab_headline.is_active, title: @lab_headline.title } }
    assert_redirected_to lab_headline_url(@lab_headline)
  end

  test "should destroy lab_headline" do
    assert_difference('LabHeadline.count', -1) do
      delete lab_headline_url(@lab_headline)
    end

    assert_redirected_to lab_headlines_url
  end
end
