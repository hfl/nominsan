require 'test_helper'

class Admin::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get admin_dashboard_home_url
    assert_response :success
  end

  test "should get help" do
    get admin_dashboard_help_url
    assert_response :success
  end

  test "should get about" do
    get admin_dashboard_about_url
    assert_response :success
  end

end
