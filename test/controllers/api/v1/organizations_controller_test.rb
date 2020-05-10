require 'test_helper'

class Api::V1::OrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_organization = api_v1_organizations(:one)
  end

  test "should get index" do
    get api_v1_organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_organization_url
    assert_response :success
  end

  test "should create api_v1_organization" do
    assert_difference('Api::V1::Organization.count') do
      post api_v1_organizations_url, params: { api_v1_organization: { index: @api_v1_organization.index, show: @api_v1_organization.show } }
    end

    assert_redirected_to api_v1_organization_url(Api::V1::Organization.last)
  end

  test "should show api_v1_organization" do
    get api_v1_organization_url(@api_v1_organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_organization_url(@api_v1_organization)
    assert_response :success
  end

  test "should update api_v1_organization" do
    patch api_v1_organization_url(@api_v1_organization), params: { api_v1_organization: { index: @api_v1_organization.index, show: @api_v1_organization.show } }
    assert_redirected_to api_v1_organization_url(@api_v1_organization)
  end

  test "should destroy api_v1_organization" do
    assert_difference('Api::V1::Organization.count', -1) do
      delete api_v1_organization_url(@api_v1_organization)
    end

    assert_redirected_to api_v1_organizations_url
  end
end
