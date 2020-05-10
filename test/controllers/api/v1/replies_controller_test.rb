require 'test_helper'

class Api::V1::RepliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_reply = api_v1_replies(:one)
  end

  test "should get index" do
    get api_v1_replies_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_reply_url
    assert_response :success
  end

  test "should create api_v1_reply" do
    assert_difference('Api::V1::Reply.count') do
      post api_v1_replies_url, params: { api_v1_reply: { index: @api_v1_reply.index, show: @api_v1_reply.show } }
    end

    assert_redirected_to api_v1_reply_url(Api::V1::Reply.last)
  end

  test "should show api_v1_reply" do
    get api_v1_reply_url(@api_v1_reply)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_reply_url(@api_v1_reply)
    assert_response :success
  end

  test "should update api_v1_reply" do
    patch api_v1_reply_url(@api_v1_reply), params: { api_v1_reply: { index: @api_v1_reply.index, show: @api_v1_reply.show } }
    assert_redirected_to api_v1_reply_url(@api_v1_reply)
  end

  test "should destroy api_v1_reply" do
    assert_difference('Api::V1::Reply.count', -1) do
      delete api_v1_reply_url(@api_v1_reply)
    end

    assert_redirected_to api_v1_replies_url
  end
end
