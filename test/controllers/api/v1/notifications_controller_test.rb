require 'test_helper'

class Api::V1::NotificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_notification = api_v1_notifications(:one)
  end

  test "should get index" do
    get api_v1_notifications_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_notification_url
    assert_response :success
  end

  test "should create api_v1_notification" do
    assert_difference('Api::V1::Notification.count') do
      post api_v1_notifications_url, params: { api_v1_notification: { index: @api_v1_notification.index, show: @api_v1_notification.show } }
    end

    assert_redirected_to api_v1_notification_url(Api::V1::Notification.last)
  end

  test "should show api_v1_notification" do
    get api_v1_notification_url(@api_v1_notification)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_notification_url(@api_v1_notification)
    assert_response :success
  end

  test "should update api_v1_notification" do
    patch api_v1_notification_url(@api_v1_notification), params: { api_v1_notification: { index: @api_v1_notification.index, show: @api_v1_notification.show } }
    assert_redirected_to api_v1_notification_url(@api_v1_notification)
  end

  test "should destroy api_v1_notification" do
    assert_difference('Api::V1::Notification.count', -1) do
      delete api_v1_notification_url(@api_v1_notification)
    end

    assert_redirected_to api_v1_notifications_url
  end
end
