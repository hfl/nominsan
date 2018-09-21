require 'test_helper'

class TempusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tempu = tempus(:one)
  end

  test "should get index" do
    get tempus_url
    assert_response :success
  end

  test "should get new" do
    get new_tempu_url
    assert_response :success
  end

  test "should create tempu" do
    assert_difference('Tempu.count') do
      post tempus_url, params: { tempu: { date: @tempu.date, date_type_id: @tempu.date_type_id, date_xsis_id: @tempu.date_xsis_id, literature_id: @tempu.literature_id, note: @tempu.note } }
    end

    assert_redirected_to tempu_url(Tempu.last)
  end

  test "should show tempu" do
    get tempu_url(@tempu)
    assert_response :success
  end

  test "should get edit" do
    get edit_tempu_url(@tempu)
    assert_response :success
  end

  test "should update tempu" do
    patch tempu_url(@tempu), params: { tempu: { date: @tempu.date, date_type_id: @tempu.date_type_id, date_xsis_id: @tempu.date_xsis_id, literature_id: @tempu.literature_id, note: @tempu.note } }
    assert_redirected_to tempu_url(@tempu)
  end

  test "should destroy tempu" do
    assert_difference('Tempu.count', -1) do
      delete tempu_url(@tempu)
    end

    assert_redirected_to tempus_url
  end
end
