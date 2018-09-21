require 'test_helper'

class EditionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @edition_type = edition_types(:one)
  end

  test "should get index" do
    get edition_types_url
    assert_response :success
  end

  test "should get new" do
    get new_edition_type_url
    assert_response :success
  end

  test "should create edition_type" do
    assert_difference('EditionType.count') do
      post edition_types_url, params: { edition_type: { about: @edition_type.about, code: @edition_type.code, name: @edition_type.name } }
    end

    assert_redirected_to edition_type_url(EditionType.last)
  end

  test "should show edition_type" do
    get edition_type_url(@edition_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_edition_type_url(@edition_type)
    assert_response :success
  end

  test "should update edition_type" do
    patch edition_type_url(@edition_type), params: { edition_type: { about: @edition_type.about, code: @edition_type.code, name: @edition_type.name } }
    assert_redirected_to edition_type_url(@edition_type)
  end

  test "should destroy edition_type" do
    assert_difference('EditionType.count', -1) do
      delete edition_type_url(@edition_type)
    end

    assert_redirected_to edition_types_url
  end
end
