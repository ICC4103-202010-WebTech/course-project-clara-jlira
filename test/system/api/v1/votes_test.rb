require "application_system_test_case"

class Api::V1::VotesTest < ApplicationSystemTestCase
  setup do
    @api_v1_vote = api_v1_votes(:one)
  end

  test "visiting the index" do
    visit api_v1_votes_url
    assert_selector "h1", text: "Api/V1/Votes"
  end

  test "creating a Vote" do
    visit api_v1_votes_url
    click_on "New Api/V1/Vote"

    fill_in "Index", with: @api_v1_vote.index
    fill_in "Show", with: @api_v1_vote.show
    click_on "Create Vote"

    assert_text "Vote was successfully created"
    click_on "Back"
  end

  test "updating a Vote" do
    visit api_v1_votes_url
    click_on "Edit", match: :first

    fill_in "Index", with: @api_v1_vote.index
    fill_in "Show", with: @api_v1_vote.show
    click_on "Update Vote"

    assert_text "Vote was successfully updated"
    click_on "Back"
  end

  test "destroying a Vote" do
    visit api_v1_votes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vote was successfully destroyed"
  end
end
