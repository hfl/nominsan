require 'test_helper'

class DateTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_type = date_types(:one)
  end

  test "should get index" do
    get date_types_url
    assert_response :success
  end

  test "should get new" do
    get new_date_type_url
    assert_response :success
  end

  test "should create date_type" do
    assert_difference('DateType.count') do
      post date_types_url, params: { date_type: { about: @date_type.about, code: @date_type.code, name: @date_type.name, ref: @date_type.ref } }
    end

    assert_redirected_to date_type_url(DateType.last)
  end

  test "should show date_type" do
    get date_type_url(@date_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_type_url(@date_type)
    assert_response :success
  end

  test "should update date_type" do
    patch date_type_url(@date_type), params: { date_type: { about: @date_type.about, code: @date_type.code, name: @date_type.name, ref: @date_type.ref } }
    assert_redirected_to date_type_url(@date_type)
  end

  test "should destroy date_type" do
    assert_difference('DateType.count', -1) do
      delete date_type_url(@date_type)
    end

    assert_redirected_to date_types_url
  end
end
