require 'test_helper'

class CdgFaqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cdg_faq = cdg_faqs(:one)
  end

  test "should get index" do
    get cdg_faqs_url
    assert_response :success
  end

  test "should get new" do
    get new_cdg_faq_url
    assert_response :success
  end

  test "should create cdg_faq" do
    assert_difference('CdgFaq.count') do
      post cdg_faqs_url, params: { cdg_faq: { answer: @cdg_faq.answer, is_active: @cdg_faq.is_active, question: @cdg_faq.question, sort_order: @cdg_faq.sort_order } }
    end

    assert_redirected_to cdg_faq_url(CdgFaq.last)
  end

  test "should show cdg_faq" do
    get cdg_faq_url(@cdg_faq)
    assert_response :success
  end

  test "should get edit" do
    get edit_cdg_faq_url(@cdg_faq)
    assert_response :success
  end

  test "should update cdg_faq" do
    patch cdg_faq_url(@cdg_faq), params: { cdg_faq: { answer: @cdg_faq.answer, is_active: @cdg_faq.is_active, question: @cdg_faq.question, sort_order: @cdg_faq.sort_order } }
    assert_redirected_to cdg_faq_url(@cdg_faq)
  end

  test "should destroy cdg_faq" do
    assert_difference('CdgFaq.count', -1) do
      delete cdg_faq_url(@cdg_faq)
    end

    assert_redirected_to cdg_faqs_url
  end
end
