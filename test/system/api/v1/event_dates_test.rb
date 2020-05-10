require "application_system_test_case"

class Api::V1::EventDatesTest < ApplicationSystemTestCase
  setup do
    @api_v1_event_date = api_v1_event_dates(:one)
  end

  test "visiting the index" do
    visit api_v1_event_dates_url
    assert_selector "h1", text: "Api/V1/Event Dates"
  end

  test "creating a Event date" do
    visit api_v1_event_dates_url
    click_on "New Api/V1/Event Date"

    fill_in "Index", with: @api_v1_event_date.index
    fill_in "Show", with: @api_v1_event_date.show
    click_on "Create Event date"

    assert_text "Event date was successfully created"
    click_on "Back"
  end

  test "updating a Event date" do
    visit api_v1_event_dates_url
    click_on "Edit", match: :first

    fill_in "Index", with: @api_v1_event_date.index
    fill_in "Show", with: @api_v1_event_date.show
    click_on "Update Event date"

    assert_text "Event date was successfully updated"
    click_on "Back"
  end

  test "destroying a Event date" do
    visit api_v1_event_dates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event date was successfully destroyed"
  end
end
