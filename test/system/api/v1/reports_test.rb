require "application_system_test_case"

class Api::V1::ReportsTest < ApplicationSystemTestCase
  setup do
    @api_v1_report = api_v1_reports(:one)
  end

  test "visiting the index" do
    visit api_v1_reports_url
    assert_selector "h1", text: "Api/V1/Reports"
  end

  test "creating a Report" do
    visit api_v1_reports_url
    click_on "New Api/V1/Report"

    fill_in "Index", with: @api_v1_report.index
    fill_in "Show", with: @api_v1_report.show
    click_on "Create Report"

    assert_text "Report was successfully created"
    click_on "Back"
  end

  test "updating a Report" do
    visit api_v1_reports_url
    click_on "Edit", match: :first

    fill_in "Index", with: @api_v1_report.index
    fill_in "Show", with: @api_v1_report.show
    click_on "Update Report"

    assert_text "Report was successfully updated"
    click_on "Back"
  end

  test "destroying a Report" do
    visit api_v1_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report was successfully destroyed"
  end
end
