require 'test_helper'

class MessageBoxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message_box = message_boxes(:one)
  end

  test "should get index" do
    get message_boxes_url
    assert_response :success
  end

  test "should get new" do
    get new_message_box_url
    assert_response :success
  end

  test "should create message_box" do
    assert_difference('MessageBox.count') do
      post message_boxes_url, params: { message_box: { index: @message_box.index, show: @message_box.show } }
    end

    assert_redirected_to message_box_url(MessageBox.last)
  end

  test "should show message_box" do
    get message_box_url(@message_box)
    assert_response :success
  end

  test "should get edit" do
    get edit_message_box_url(@message_box)
    assert_response :success
  end

  test "should update message_box" do
    patch message_box_url(@message_box), params: { message_box: { index: @message_box.index, show: @message_box.show } }
    assert_redirected_to message_box_url(@message_box)
  end

  test "should destroy message_box" do
    assert_difference('MessageBox.count', -1) do
      delete message_box_url(@message_box)
    end

    assert_redirected_to message_boxes_url
  end
end
