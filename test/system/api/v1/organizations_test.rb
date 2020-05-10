require "application_system_test_case"

class Api::V1::OrganizationsTest < ApplicationSystemTestCase
  setup do
    @api_v1_organization = api_v1_organizations(:one)
  end

  test "visiting the index" do
    visit api_v1_organizations_url
    assert_selector "h1", text: "Api/V1/Organizations"
  end

  test "creating a Organization" do
    visit api_v1_organizations_url
    click_on "New Api/V1/Organization"

    fill_in "Index", with: @api_v1_organization.index
    fill_in "Show", with: @api_v1_organization.show
    click_on "Create Organization"

    assert_text "Organization was successfully created"
    click_on "Back"
  end

  test "updating a Organization" do
    visit api_v1_organizations_url
    click_on "Edit", match: :first

    fill_in "Index", with: @api_v1_organization.index
    fill_in "Show", with: @api_v1_organization.show
    click_on "Update Organization"

    assert_text "Organization was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization" do
    visit api_v1_organizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization was successfully destroyed"
  end
end
