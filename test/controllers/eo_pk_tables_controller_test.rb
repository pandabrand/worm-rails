require 'test_helper'

class EoPkTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eo_pk_table = eo_pk_tables(:one)
  end

  test "should get index" do
    get eo_pk_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_eo_pk_table_url
    assert_response :success
  end

  test "should create eo_pk_table" do
    assert_difference('EoPkTable.count') do
      post eo_pk_tables_url, params: { eo_pk_table: { PK: @eo_pk_table.PK } }
    end

    assert_redirected_to eo_pk_table_url(EoPkTable.last)
  end

  test "should show eo_pk_table" do
    get eo_pk_table_url(@eo_pk_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_eo_pk_table_url(@eo_pk_table)
    assert_response :success
  end

  test "should update eo_pk_table" do
    patch eo_pk_table_url(@eo_pk_table), params: { eo_pk_table: { PK: @eo_pk_table.PK } }
    assert_redirected_to eo_pk_table_url(@eo_pk_table)
  end

  test "should destroy eo_pk_table" do
    assert_difference('EoPkTable.count', -1) do
      delete eo_pk_table_url(@eo_pk_table)
    end

    assert_redirected_to eo_pk_tables_url
  end
end
