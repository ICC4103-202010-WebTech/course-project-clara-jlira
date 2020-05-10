require 'test_helper'

class Api::V1::MembershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_membership = api_v1_memberships(:one)
  end

  test "should get index" do
    get api_v1_memberships_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_membership_url
    assert_response :success
  end

  test "should create api_v1_membership" do
    assert_difference('Api::V1::Membership.count') do
      post api_v1_memberships_url, params: { api_v1_membership: { index: @api_v1_membership.index, show: @api_v1_membership.show } }
    end

    assert_redirected_to api_v1_membership_url(Api::V1::Membership.last)
  end

  test "should show api_v1_membership" do
    get api_v1_membership_url(@api_v1_membership)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_membership_url(@api_v1_membership)
    assert_response :success
  end

  test "should update api_v1_membership" do
    patch api_v1_membership_url(@api_v1_membership), params: { api_v1_membership: { index: @api_v1_membership.index, show: @api_v1_membership.show } }
    assert_redirected_to api_v1_membership_url(@api_v1_membership)
  end

  test "should destroy api_v1_membership" do
    assert_difference('Api::V1::Membership.count', -1) do
      delete api_v1_membership_url(@api_v1_membership)
    end

    assert_redirected_to api_v1_memberships_url
  end
end
