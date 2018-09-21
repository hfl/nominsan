require 'test_helper'

class FormatMimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @format_mime = format_mimes(:one)
  end

  test "should get index" do
    get format_mimes_url
    assert_response :success
  end

  test "should get new" do
    get new_format_mime_url
    assert_response :success
  end

  test "should create format_mime" do
    assert_difference('FormatMime.count') do
      post format_mimes_url, params: { format_mime: { about: @format_mime.about, code: @format_mime.code, name: @format_mime.name } }
    end

    assert_redirected_to format_mime_url(FormatMime.last)
  end

  test "should show format_mime" do
    get format_mime_url(@format_mime)
    assert_response :success
  end

  test "should get edit" do
    get edit_format_mime_url(@format_mime)
    assert_response :success
  end

  test "should update format_mime" do
    patch format_mime_url(@format_mime), params: { format_mime: { about: @format_mime.about, code: @format_mime.code, name: @format_mime.name } }
    assert_redirected_to format_mime_url(@format_mime)
  end

  test "should destroy format_mime" do
    assert_difference('FormatMime.count', -1) do
      delete format_mime_url(@format_mime)
    end

    assert_redirected_to format_mimes_url
  end
end
