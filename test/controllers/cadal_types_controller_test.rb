require 'test_helper'

class CadalTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadal_type = cadal_types(:one)
  end

  test "should get index" do
    get cadal_types_url
    assert_response :success
  end

  test "should get new" do
    get new_cadal_type_url
    assert_response :success
  end

  test "should create cadal_type" do
    assert_difference('CadalType.count') do
      post cadal_types_url, params: { cadal_type: { about: @cadal_type.about, code: @cadal_type.code, name: @cadal_type.name } }
    end

    assert_redirected_to cadal_type_url(CadalType.last)
  end

  test "should show cadal_type" do
    get cadal_type_url(@cadal_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadal_type_url(@cadal_type)
    assert_response :success
  end

  test "should update cadal_type" do
    patch cadal_type_url(@cadal_type), params: { cadal_type: { about: @cadal_type.about, code: @cadal_type.code, name: @cadal_type.name } }
    assert_redirected_to cadal_type_url(@cadal_type)
  end

  test "should destroy cadal_type" do
    assert_difference('CadalType.count', -1) do
      delete cadal_type_url(@cadal_type)
    end

    assert_redirected_to cadal_types_url
  end
end
