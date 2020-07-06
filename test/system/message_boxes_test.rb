require "application_system_test_case"

class MessageBoxesTest < ApplicationSystemTestCase
  setup do
    @message_box = message_boxes(:one)
  end

  test "visiting the index" do
    visit message_boxes_url
    assert_selector "h1", text: "Message Boxes"
  end

  test "creating a Message box" do
    visit message_boxes_url
    click_on "New Message Box"

    fill_in "Index", with: @message_box.index
    fill_in "Show", with: @message_box.show
    click_on "Create Message box"

    assert_text "Message box was successfully created"
    click_on "Back"
  end

  test "updating a Message box" do
    visit message_boxes_url
    click_on "Edit", match: :first

    fill_in "Index", with: @message_box.index
    fill_in "Show", with: @message_box.show
    click_on "Update Message box"

    assert_text "Message box was successfully updated"
    click_on "Back"
  end

  test "destroying a Message box" do
    visit message_boxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Message box was successfully destroyed"
  end
end
