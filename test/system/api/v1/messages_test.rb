require "application_system_test_case"

class Api::V1::MessagesTest < ApplicationSystemTestCase
  setup do
    @api_v1_message = api_v1_messages(:one)
  end

  test "visiting the index" do
    visit api_v1_messages_url
    assert_selector "h1", text: "Api/V1/Messages"
  end

  test "creating a Message" do
    visit api_v1_messages_url
    click_on "New Api/V1/Message"

    fill_in "Index", with: @api_v1_message.index
    fill_in "Show", with: @api_v1_message.show
    click_on "Create Message"

    assert_text "Message was successfully created"
    click_on "Back"
  end

  test "updating a Message" do
    visit api_v1_messages_url
    click_on "Edit", match: :first

    fill_in "Index", with: @api_v1_message.index
    fill_in "Show", with: @api_v1_message.show
    click_on "Update Message"

    assert_text "Message was successfully updated"
    click_on "Back"
  end

  test "destroying a Message" do
    visit api_v1_messages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Message was successfully destroyed"
  end
end
