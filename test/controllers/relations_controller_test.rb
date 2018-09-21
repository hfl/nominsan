require 'test_helper'

class RelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relation = relations(:one)
  end

  test "should get index" do
    get relations_url
    assert_response :success
  end

  test "should get new" do
    get new_relation_url
    assert_response :success
  end

  test "should create relation" do
    assert_difference('Relation.count') do
      post relations_url, params: { relation: { literature_id: @relation.literature_id, parent_id: @relation.parent_id, relation_type_id: @relation.relation_type_id } }
    end

    assert_redirected_to relation_url(Relation.last)
  end

  test "should show relation" do
    get relation_url(@relation)
    assert_response :success
  end

  test "should get edit" do
    get edit_relation_url(@relation)
    assert_response :success
  end

  test "should update relation" do
    patch relation_url(@relation), params: { relation: { literature_id: @relation.literature_id, parent_id: @relation.parent_id, relation_type_id: @relation.relation_type_id } }
    assert_redirected_to relation_url(@relation)
  end

  test "should destroy relation" do
    assert_difference('Relation.count', -1) do
      delete relation_url(@relation)
    end

    assert_redirected_to relations_url
  end
end
