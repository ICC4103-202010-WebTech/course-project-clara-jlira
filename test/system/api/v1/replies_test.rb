require "application_system_test_case"

class Api::V1::RepliesTest < ApplicationSystemTestCase
  setup do
    @api_v1_reply = api_v1_replies(:one)
  end

  test "visiting the index" do
    visit api_v1_replies_url
    assert_selector "h1", text: "Api/V1/Replies"
  end

  test "creating a Reply" do
    visit api_v1_replies_url
    click_on "New Api/V1/Reply"

    fill_in "Index", with: @api_v1_reply.index
    fill_in "Show", with: @api_v1_reply.show
    click_on "Create Reply"

    assert_text "Reply was successfully created"
    click_on "Back"
  end

  test "updating a Reply" do
    visit api_v1_replies_url
    click_on "Edit", match: :first

    fill_in "Index", with: @api_v1_reply.index
    fill_in "Show", with: @api_v1_reply.show
    click_on "Update Reply"

    assert_text "Reply was successfully updated"
    click_on "Back"
  end

  test "destroying a Reply" do
    visit api_v1_replies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reply was successfully destroyed"
  end
end
