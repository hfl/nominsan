require 'test_helper'

class MarcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marc = marcs(:one)
  end

  test "should get index" do
    get marcs_url
    assert_response :success
  end

  test "should get new" do
    get new_marc_url
    assert_response :success
  end

  test "should create marc" do
    assert_difference('Marc.count') do
      post marcs_url, params: { marc: { literature_id: @marc.literature_id, marc: @marc.marc, marc_type_id: @marc.marc_type_id } }
    end

    assert_redirected_to marc_url(Marc.last)
  end

  test "should show marc" do
    get marc_url(@marc)
    assert_response :success
  end

  test "should get edit" do
    get edit_marc_url(@marc)
    assert_response :success
  end

  test "should update marc" do
    patch marc_url(@marc), params: { marc: { literature_id: @marc.literature_id, marc: @marc.marc, marc_type_id: @marc.marc_type_id } }
    assert_redirected_to marc_url(@marc)
  end

  test "should destroy marc" do
    assert_difference('Marc.count', -1) do
      delete marc_url(@marc)
    end

    assert_redirected_to marcs_url
  end
end
