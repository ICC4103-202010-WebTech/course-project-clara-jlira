require 'test_helper'

class Api::V1::MessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_message = api_v1_messages(:one)
  end

  test "should get index" do
    get api_v1_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_message_url
    assert_response :success
  end

  test "should create api_v1_message" do
    assert_difference('Api::V1::Message.count') do
      post api_v1_messages_url, params: { api_v1_message: { index: @api_v1_message.index, show: @api_v1_message.show } }
    end

    assert_redirected_to api_v1_message_url(Api::V1::Message.last)
  end

  test "should show api_v1_message" do
    get api_v1_message_url(@api_v1_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_message_url(@api_v1_message)
    assert_response :success
  end

  test "should update api_v1_message" do
    patch api_v1_message_url(@api_v1_message), params: { api_v1_message: { index: @api_v1_message.index, show: @api_v1_message.show } }
    assert_redirected_to api_v1_message_url(@api_v1_message)
  end

  test "should destroy api_v1_message" do
    assert_difference('Api::V1::Message.count', -1) do
      delete api_v1_message_url(@api_v1_message)
    end

    assert_redirected_to api_v1_messages_url
  end
end
