require "application_system_test_case"

class Api::V1::EventFilesTest < ApplicationSystemTestCase
  setup do
    @api_v1_event_file = api_v1_event_files(:one)
  end

  test "visiting the index" do
    visit api_v1_event_files_url
    assert_selector "h1", text: "Api/V1/Event Files"
  end

  test "creating a Event file" do
    visit api_v1_event_files_url
    click_on "New Api/V1/Event File"

    fill_in "Index", with: @api_v1_event_file.index
    fill_in "Show", with: @api_v1_event_file.show
    click_on "Create Event file"

    assert_text "Event file was successfully created"
    click_on "Back"
  end

  test "updating a Event file" do
    visit api_v1_event_files_url
    click_on "Edit", match: :first

    fill_in "Index", with: @api_v1_event_file.index
    fill_in "Show", with: @api_v1_event_file.show
    click_on "Update Event file"

    assert_text "Event file was successfully updated"
    click_on "Back"
  end

  test "destroying a Event file" do
    visit api_v1_event_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event file was successfully destroyed"
  end
end
