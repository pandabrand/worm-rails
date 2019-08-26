require 'test_helper'

class AdditionalRunDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @additional_run_date = additional_run_dates(:one)
  end

  test "should get index" do
    get additional_run_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_additional_run_date_url
    assert_response :success
  end

  test "should create additional_run_date" do
    assert_difference('AdditionalRunDate.count') do
      post additional_run_dates_url, params: { additional_run_date: { fk_order_id: @additional_run_date.fk_order_id, pk_id: @additional_run_date.pk_id, run_date: @additional_run_date.run_date } }
    end

    assert_redirected_to additional_run_date_url(AdditionalRunDate.last)
  end

  test "should show additional_run_date" do
    get additional_run_date_url(@additional_run_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_additional_run_date_url(@additional_run_date)
    assert_response :success
  end

  test "should update additional_run_date" do
    patch additional_run_date_url(@additional_run_date), params: { additional_run_date: { fk_order_id: @additional_run_date.fk_order_id, pk_id: @additional_run_date.pk_id, run_date: @additional_run_date.run_date } }
    assert_redirected_to additional_run_date_url(@additional_run_date)
  end

  test "should destroy additional_run_date" do
    assert_difference('AdditionalRunDate.count', -1) do
      delete additional_run_date_url(@additional_run_date)
    end

    assert_redirected_to additional_run_dates_url
  end
end
