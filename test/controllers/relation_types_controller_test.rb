require 'test_helper'

class RelationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relation_type = relation_types(:one)
  end

  test "should get index" do
    get relation_types_url
    assert_response :success
  end

  test "should get new" do
    get new_relation_type_url
    assert_response :success
  end

  test "should create relation_type" do
    assert_difference('RelationType.count') do
      post relation_types_url, params: { relation_type: { about: @relation_type.about, code: @relation_type.code, name: @relation_type.name } }
    end

    assert_redirected_to relation_type_url(RelationType.last)
  end

  test "should show relation_type" do
    get relation_type_url(@relation_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_relation_type_url(@relation_type)
    assert_response :success
  end

  test "should update relation_type" do
    patch relation_type_url(@relation_type), params: { relation_type: { about: @relation_type.about, code: @relation_type.code, name: @relation_type.name } }
    assert_redirected_to relation_type_url(@relation_type)
  end

  test "should destroy relation_type" do
    assert_difference('RelationType.count', -1) do
      delete relation_type_url(@relation_type)
    end

    assert_redirected_to relation_types_url
  end
end
