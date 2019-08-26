require 'test_helper'

class LabComplexesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lab_complex = lab_complexes(:one)
  end

  test "should get index" do
    get lab_complexes_url
    assert_response :success
  end

  test "should get new" do
    get new_lab_complex_url
    assert_response :success
  end

  test "should create lab_complex" do
    assert_difference('LabComplex.count') do
      post lab_complexes_url, params: { lab_complex: { area_name: @lab_complex.area_name, complex_id: @lab_complex.complex_id, fk_area_id: @lab_complex.fk_area_id, is_active: @lab_complex.is_active, name: @lab_complex.name } }
    end

    assert_redirected_to lab_complex_url(LabComplex.last)
  end

  test "should show lab_complex" do
    get lab_complex_url(@lab_complex)
    assert_response :success
  end

  test "should get edit" do
    get edit_lab_complex_url(@lab_complex)
    assert_response :success
  end

  test "should update lab_complex" do
    patch lab_complex_url(@lab_complex), params: { lab_complex: { area_name: @lab_complex.area_name, complex_id: @lab_complex.complex_id, fk_area_id: @lab_complex.fk_area_id, is_active: @lab_complex.is_active, name: @lab_complex.name } }
    assert_redirected_to lab_complex_url(@lab_complex)
  end

  test "should destroy lab_complex" do
    assert_difference('LabComplex.count', -1) do
      delete lab_complex_url(@lab_complex)
    end

    assert_redirected_to lab_complexes_url
  end
end
