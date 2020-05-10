require "application_system_test_case"

class Api::V1::CommentsTest < ApplicationSystemTestCase
  setup do
    @api_v1_comment = api_v1_comments(:one)
  end

  test "visiting the index" do
    visit api_v1_comments_url
    assert_selector "h1", text: "Api/V1/Comments"
  end

  test "creating a Comment" do
    visit api_v1_comments_url
    click_on "New Api/V1/Comment"

    fill_in "Index", with: @api_v1_comment.index
    fill_in "Show", with: @api_v1_comment.show
    click_on "Create Comment"

    assert_text "Comment was successfully created"
    click_on "Back"
  end

  test "updating a Comment" do
    visit api_v1_comments_url
    click_on "Edit", match: :first

    fill_in "Index", with: @api_v1_comment.index
    fill_in "Show", with: @api_v1_comment.show
    click_on "Update Comment"

    assert_text "Comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Comment" do
    visit api_v1_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comment was successfully destroyed"
  end
end
