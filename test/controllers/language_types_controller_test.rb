require 'test_helper'

class LanguageTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @language_type = language_types(:one)
  end

  test "should get index" do
    get language_types_url
    assert_response :success
  end

  test "should get new" do
    get new_language_type_url
    assert_response :success
  end

  test "should create language_type" do
    assert_difference('LanguageType.count') do
      post language_types_url, params: { language_type: { about: @language_type.about, code: @language_type.code, name: @language_type.name } }
    end

    assert_redirected_to language_type_url(LanguageType.last)
  end

  test "should show language_type" do
    get language_type_url(@language_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_language_type_url(@language_type)
    assert_response :success
  end

  test "should update language_type" do
    patch language_type_url(@language_type), params: { language_type: { about: @language_type.about, code: @language_type.code, name: @language_type.name } }
    assert_redirected_to language_type_url(@language_type)
  end

  test "should destroy language_type" do
    assert_difference('LanguageType.count', -1) do
      delete language_type_url(@language_type)
    end

    assert_redirected_to language_types_url
  end
end
