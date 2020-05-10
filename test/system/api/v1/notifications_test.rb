require "application_system_test_case"

class Api::V1::NotificationsTest < ApplicationSystemTestCase
  setup do
    @api_v1_notification = api_v1_notifications(:one)
  end

  test "visiting the index" do
    visit api_v1_notifications_url
    assert_selector "h1", text: "Api/V1/Notifications"
  end

  test "creating a Notification" do
    visit api_v1_notifications_url
    click_on "New Api/V1/Notification"

    fill_in "Index", with: @api_v1_notification.index
    fill_in "Show", with: @api_v1_notification.show
    click_on "Create Notification"

    assert_text "Notification was successfully created"
    click_on "Back"
  end

  test "updating a Notification" do
    visit api_v1_notifications_url
    click_on "Edit", match: :first

    fill_in "Index", with: @api_v1_notification.index
    fill_in "Show", with: @api_v1_notification.show
    click_on "Update Notification"

    assert_text "Notification was successfully updated"
    click_on "Back"
  end

  test "destroying a Notification" do
    visit api_v1_notifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notification was successfully destroyed"
  end
end
