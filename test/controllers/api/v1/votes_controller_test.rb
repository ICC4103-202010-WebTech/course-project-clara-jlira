require 'test_helper'

class Api::V1::VotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_vote = api_v1_votes(:one)
  end

  test "should get index" do
    get api_v1_votes_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_vote_url
    assert_response :success
  end

  test "should create api_v1_vote" do
    assert_difference('Api::V1::Vote.count') do
      post api_v1_votes_url, params: { api_v1_vote: { index: @api_v1_vote.index, show: @api_v1_vote.show } }
    end

    assert_redirected_to api_v1_vote_url(Api::V1::Vote.last)
  end

  test "should show api_v1_vote" do
    get api_v1_vote_url(@api_v1_vote)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_vote_url(@api_v1_vote)
    assert_response :success
  end

  test "should update api_v1_vote" do
    patch api_v1_vote_url(@api_v1_vote), params: { api_v1_vote: { index: @api_v1_vote.index, show: @api_v1_vote.show } }
    assert_redirected_to api_v1_vote_url(@api_v1_vote)
  end

  test "should destroy api_v1_vote" do
    assert_difference('Api::V1::Vote.count', -1) do
      delete api_v1_vote_url(@api_v1_vote)
    end

    assert_redirected_to api_v1_votes_url
  end
end
