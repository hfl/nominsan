require 'test_helper'

class CreatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @creator = creators(:one)
  end

  test "should get index" do
    get creators_url
    assert_response :success
  end

  test "should get new" do
    get new_creator_url
    assert_response :success
  end

  test "should create creator" do
    assert_difference('Creator.count') do
      post creators_url, params: { creator: { authorid: @creator.authorid, creator: @creator.creator, discipline: @creator.discipline, institution: @creator.institution, intr: @creator.intr, literature_id: @creator.literature_id, role_id: @creator.role_id } }
    end

    assert_redirected_to creator_url(Creator.last)
  end

  test "should show creator" do
    get creator_url(@creator)
    assert_response :success
  end

  test "should get edit" do
    get edit_creator_url(@creator)
    assert_response :success
  end

  test "should update creator" do
    patch creator_url(@creator), params: { creator: { authorid: @creator.authorid, creator: @creator.creator, discipline: @creator.discipline, institution: @creator.institution, intr: @creator.intr, literature_id: @creator.literature_id, role_id: @creator.role_id } }
    assert_redirected_to creator_url(@creator)
  end

  test "should destroy creator" do
    assert_difference('Creator.count', -1) do
      delete creator_url(@creator)
    end

    assert_redirected_to creators_url
  end
end
