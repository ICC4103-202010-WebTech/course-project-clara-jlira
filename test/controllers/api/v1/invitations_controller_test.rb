require 'test_helper'

class Api::V1::InvitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_invitation = api_v1_invitations(:one)
  end

  test "should get index" do
    get api_v1_invitations_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_invitation_url
    assert_response :success
  end

  test "should create api_v1_invitation" do
    assert_difference('Api::V1::Invitation.count') do
      post api_v1_invitations_url, params: { api_v1_invitation: { index: @api_v1_invitation.index, show: @api_v1_invitation.show } }
    end

    assert_redirected_to api_v1_invitation_url(Api::V1::Invitation.last)
  end

  test "should show api_v1_invitation" do
    get api_v1_invitation_url(@api_v1_invitation)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_invitation_url(@api_v1_invitation)
    assert_response :success
  end

  test "should update api_v1_invitation" do
    patch api_v1_invitation_url(@api_v1_invitation), params: { api_v1_invitation: { index: @api_v1_invitation.index, show: @api_v1_invitation.show } }
    assert_redirected_to api_v1_invitation_url(@api_v1_invitation)
  end

  test "should destroy api_v1_invitation" do
    assert_difference('Api::V1::Invitation.count', -1) do
      delete api_v1_invitation_url(@api_v1_invitation)
    end

    assert_redirected_to api_v1_invitations_url
  end
end
