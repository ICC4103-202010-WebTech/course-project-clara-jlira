require 'test_helper'

class Api::V1::OrganizationFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_organization_file = api_v1_organization_files(:one)
  end

  test "should get index" do
    get api_v1_organization_files_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_organization_file_url
    assert_response :success
  end

  test "should create api_v1_organization_file" do
    assert_difference('Api::V1::OrganizationFile.count') do
      post api_v1_organization_files_url, params: { api_v1_organization_file: { index: @api_v1_organization_file.index, show: @api_v1_organization_file.show } }
    end

    assert_redirected_to api_v1_organization_file_url(Api::V1::OrganizationFile.last)
  end

  test "should show api_v1_organization_file" do
    get api_v1_organization_file_url(@api_v1_organization_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_organization_file_url(@api_v1_organization_file)
    assert_response :success
  end

  test "should update api_v1_organization_file" do
    patch api_v1_organization_file_url(@api_v1_organization_file), params: { api_v1_organization_file: { index: @api_v1_organization_file.index, show: @api_v1_organization_file.show } }
    assert_redirected_to api_v1_organization_file_url(@api_v1_organization_file)
  end

  test "should destroy api_v1_organization_file" do
    assert_difference('Api::V1::OrganizationFile.count', -1) do
      delete api_v1_organization_file_url(@api_v1_organization_file)
    end

    assert_redirected_to api_v1_organization_files_url
  end
end
