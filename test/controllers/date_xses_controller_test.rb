require 'test_helper'

class DateXsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_xse = date_xses(:one)
  end

  test "should get index" do
    get date_xses_url
    assert_response :success
  end

  test "should get new" do
    get new_date_xse_url
    assert_response :success
  end

  test "should create date_xse" do
    assert_difference('DateXsis.count') do
      post date_xses_url, params: { date_xse: { about: @date_xse.about, code: @date_xse.code, name: @date_xse.name, ref: @date_xse.ref } }
    end

    assert_redirected_to date_xse_url(DateXsis.last)
  end

  test "should show date_xse" do
    get date_xse_url(@date_xse)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_xse_url(@date_xse)
    assert_response :success
  end

  test "should update date_xse" do
    patch date_xse_url(@date_xse), params: { date_xse: { about: @date_xse.about, code: @date_xse.code, name: @date_xse.name, ref: @date_xse.ref } }
    assert_redirected_to date_xse_url(@date_xse)
  end

  test "should destroy date_xse" do
    assert_difference('DateXsis.count', -1) do
      delete date_xse_url(@date_xse)
    end

    assert_redirected_to date_xses_url
  end
end
