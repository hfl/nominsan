require 'test_helper'

class MarcTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marc_type = marc_types(:one)
  end

  test "should get index" do
    get marc_types_url
    assert_response :success
  end

  test "should get new" do
    get new_marc_type_url
    assert_response :success
  end

  test "should create marc_type" do
    assert_difference('MarcType.count') do
      post marc_types_url, params: { marc_type: { about: @marc_type.about, code: @marc_type.code, name: @marc_type.name } }
    end

    assert_redirected_to marc_type_url(MarcType.last)
  end

  test "should show marc_type" do
    get marc_type_url(@marc_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_marc_type_url(@marc_type)
    assert_response :success
  end

  test "should update marc_type" do
    patch marc_type_url(@marc_type), params: { marc_type: { about: @marc_type.about, code: @marc_type.code, name: @marc_type.name } }
    assert_redirected_to marc_type_url(@marc_type)
  end

  test "should destroy marc_type" do
    assert_difference('MarcType.count', -1) do
      delete marc_type_url(@marc_type)
    end

    assert_redirected_to marc_types_url
  end
end
