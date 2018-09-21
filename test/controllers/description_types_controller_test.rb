require 'test_helper'

class DescriptionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @description_type = description_types(:one)
  end

  test "should get index" do
    get description_types_url
    assert_response :success
  end

  test "should get new" do
    get new_description_type_url
    assert_response :success
  end

  test "should create description_type" do
    assert_difference('DescriptionType.count') do
      post description_types_url, params: { description_type: { about: @description_type.about, code: @description_type.code, name: @description_type.name } }
    end

    assert_redirected_to description_type_url(DescriptionType.last)
  end

  test "should show description_type" do
    get description_type_url(@description_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_description_type_url(@description_type)
    assert_response :success
  end

  test "should update description_type" do
    patch description_type_url(@description_type), params: { description_type: { about: @description_type.about, code: @description_type.code, name: @description_type.name } }
    assert_redirected_to description_type_url(@description_type)
  end

  test "should destroy description_type" do
    assert_difference('DescriptionType.count', -1) do
      delete description_type_url(@description_type)
    end

    assert_redirected_to description_types_url
  end
end
