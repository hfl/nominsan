require 'test_helper'

class TocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toc = tocs(:one)
  end

  test "should get index" do
    get tocs_url
    assert_response :success
  end

  test "should get new" do
    get new_toc_url
    assert_response :success
  end

  test "should create toc" do
    assert_difference('Toc.count') do
      post tocs_url, params: { toc: { chapter: @toc.chapter, fiel_number: @toc.fiel_number, literature_id: @toc.literature_id, page: @toc.page, parent_id: @toc.parent_id, title: @toc.title } }
    end

    assert_redirected_to toc_url(Toc.last)
  end

  test "should show toc" do
    get toc_url(@toc)
    assert_response :success
  end

  test "should get edit" do
    get edit_toc_url(@toc)
    assert_response :success
  end

  test "should update toc" do
    patch toc_url(@toc), params: { toc: { chapter: @toc.chapter, fiel_number: @toc.fiel_number, literature_id: @toc.literature_id, page: @toc.page, parent_id: @toc.parent_id, title: @toc.title } }
    assert_redirected_to toc_url(@toc)
  end

  test "should destroy toc" do
    assert_difference('Toc.count', -1) do
      delete toc_url(@toc)
    end

    assert_redirected_to tocs_url
  end
end
