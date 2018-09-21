require 'test_helper'

class FormatExtentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @format_extent = format_extents(:one)
  end

  test "should get index" do
    get format_extents_url
    assert_response :success
  end

  test "should get new" do
    get new_format_extent_url
    assert_response :success
  end

  test "should create format_extent" do
    assert_difference('FormatExtent.count') do
      post format_extents_url, params: { format_extent: { about: @format_extent.about, code: @format_extent.code, name: @format_extent.name } }
    end

    assert_redirected_to format_extent_url(FormatExtent.last)
  end

  test "should show format_extent" do
    get format_extent_url(@format_extent)
    assert_response :success
  end

  test "should get edit" do
    get edit_format_extent_url(@format_extent)
    assert_response :success
  end

  test "should update format_extent" do
    patch format_extent_url(@format_extent), params: { format_extent: { about: @format_extent.about, code: @format_extent.code, name: @format_extent.name } }
    assert_redirected_to format_extent_url(@format_extent)
  end

  test "should destroy format_extent" do
    assert_difference('FormatExtent.count', -1) do
      delete format_extent_url(@format_extent)
    end

    assert_redirected_to format_extents_url
  end
end
