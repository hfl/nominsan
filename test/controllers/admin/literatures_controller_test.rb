require 'test_helper'

class Admin::LiteraturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @literature = literatures(:one)
  end

  test "should get index" do
    get admin_literatures_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_literature_url
    assert_response :success
  end

  test "should create literature" do
    assert_difference('Literature.count') do
      post admin_literatures_url, params: { literature: {  } }
    end

    assert_redirected_to literature_url(Literature.last)
  end

  test "should show literature" do
    get admin_literature_url(@literature)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_literature_url(@literature)
    assert_response :success
  end

  test "should update literature" do
    patch admin_literature_url(@literature), params: { literature: {  } }
    assert_redirected_to literature_url(@literature)
  end

  test "should destroy literature" do
    assert_difference('Literature.count', -1) do
      delete admin_literature_url(@literature)
    end

    assert_redirected_to admin_literatures_url
  end
end
