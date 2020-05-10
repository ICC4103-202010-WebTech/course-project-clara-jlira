require 'test_helper'

class Api::V1::EventDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_event_date = api_v1_event_dates(:one)
  end

  test "should get index" do
    get api_v1_event_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_event_date_url
    assert_response :success
  end

  test "should create api_v1_event_date" do
    assert_difference('Api::V1::EventDate.count') do
      post api_v1_event_dates_url, params: { api_v1_event_date: { index: @api_v1_event_date.index, show: @api_v1_event_date.show } }
    end

    assert_redirected_to api_v1_event_date_url(Api::V1::EventDate.last)
  end

  test "should show api_v1_event_date" do
    get api_v1_event_date_url(@api_v1_event_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_event_date_url(@api_v1_event_date)
    assert_response :success
  end

  test "should update api_v1_event_date" do
    patch api_v1_event_date_url(@api_v1_event_date), params: { api_v1_event_date: { index: @api_v1_event_date.index, show: @api_v1_event_date.show } }
    assert_redirected_to api_v1_event_date_url(@api_v1_event_date)
  end

  test "should destroy api_v1_event_date" do
    assert_difference('Api::V1::EventDate.count', -1) do
      delete api_v1_event_date_url(@api_v1_event_date)
    end

    assert_redirected_to api_v1_event_dates_url
  end
end
