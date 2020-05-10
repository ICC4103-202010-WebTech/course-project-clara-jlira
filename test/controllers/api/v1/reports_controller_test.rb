require 'test_helper'

class Api::V1::ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_report = api_v1_reports(:one)
  end

  test "should get index" do
    get api_v1_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_report_url
    assert_response :success
  end

  test "should create api_v1_report" do
    assert_difference('Api::V1::Report.count') do
      post api_v1_reports_url, params: { api_v1_report: { index: @api_v1_report.index, show: @api_v1_report.show } }
    end

    assert_redirected_to api_v1_report_url(Api::V1::Report.last)
  end

  test "should show api_v1_report" do
    get api_v1_report_url(@api_v1_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_report_url(@api_v1_report)
    assert_response :success
  end

  test "should update api_v1_report" do
    patch api_v1_report_url(@api_v1_report), params: { api_v1_report: { index: @api_v1_report.index, show: @api_v1_report.show } }
    assert_redirected_to api_v1_report_url(@api_v1_report)
  end

  test "should destroy api_v1_report" do
    assert_difference('Api::V1::Report.count', -1) do
      delete api_v1_report_url(@api_v1_report)
    end

    assert_redirected_to api_v1_reports_url
  end
end
