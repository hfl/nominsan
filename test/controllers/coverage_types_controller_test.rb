require 'test_helper'

class CoverageTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coverage_type = coverage_types(:one)
  end

  test "should get index" do
    get coverage_types_url
    assert_response :success
  end

  test "should get new" do
    get new_coverage_type_url
    assert_response :success
  end

  test "should create coverage_type" do
    assert_difference('CoverageType.count') do
      post coverage_types_url, params: { coverage_type: { about: @coverage_type.about, code: @coverage_type.code, name: @coverage_type.name } }
    end

    assert_redirected_to coverage_type_url(CoverageType.last)
  end

  test "should show coverage_type" do
    get coverage_type_url(@coverage_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_coverage_type_url(@coverage_type)
    assert_response :success
  end

  test "should update coverage_type" do
    patch coverage_type_url(@coverage_type), params: { coverage_type: { about: @coverage_type.about, code: @coverage_type.code, name: @coverage_type.name } }
    assert_redirected_to coverage_type_url(@coverage_type)
  end

  test "should destroy coverage_type" do
    assert_difference('CoverageType.count', -1) do
      delete coverage_type_url(@coverage_type)
    end

    assert_redirected_to coverage_types_url
  end
end
